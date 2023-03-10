import os
from rest_framework.response import Response
from rest_framework.decorators import api_view, action
from rest_framework.viewsets import ViewSet
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from rest_framework.status import HTTP_400_BAD_REQUEST
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from base.models import Submission
from .serializers import SubmissionSerializer, UploadSerializer
from django.db import transaction


class SubmissionViewSet(ViewSet):
    authentication_classes = [SessionAuthentication, TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Submission.objects.all()
    serializer_class = UploadSerializer
    
    # I'm not sure if this is needed as filtering is done in each method separately
    def get_queryset(self):
        return self.queryset.filter(user=self.request.user)
    
    def retrieve(self, request, pk):
        submission = get_object_or_404(Submission, pk=pk, user=request.user)
        serializer = SubmissionSerializer(submission)
        return Response(serializer.data)
    
    def list(self, request):
        submissions = Submission.objects.filter(user=request.user)
        serializer = SubmissionSerializer(submissions, many=True)
        return Response(serializer.data)

    # Create a submission and start the scanning process
    def create(self, request):
        
        serializer = UploadSerializer(data=request.data)
        if not serializer.is_valid():
            print(serializer.errors)
            return Response(serializer.errors, status=HTTP_400_BAD_REQUEST)
        
        file = request.FILES.get('file')
        _, ext = os.path.splitext(file.name)
        if ext.lower() != ".exe":
            return Response(
                "File type: "+ ext + " is not accepted. Accepted filetypes are: .exe",
                status=HTTP_400_BAD_REQUEST)
        
        print(serializer.data, file.content_type)
        new = Submission(
            file=file,
            mode=serializer.data['mode'],
            state=0,
            dataUsePermission=serializer.data['dataUsePermission'],
            user=request.user
        )
        result_tmp = new.submit(file)
        new.result = result_tmp["result"]
        new.save()

        if result_tmp is None:
            return Response("Analysis mode: " + str(new.mode) + " is not valid.", status=HTTP_400_BAD_REQUEST)
        
        return JsonResponse(result_tmp, status=201)
    
        # TODO Return the new submission instance, or at least the id
        # Cannot return id but will need to later:
        # function does not wait for database save() to end, so the id is left unasaigned

        # Below is the mess I created while trying
        '''
        with transaction.atomic():
            print(serializer.data, file.content_type)
            print("UUUUUUUUUUUU")
            new = Submission(
                file=file,
                mode=serializer.data['mode'],
                state=0,
                dataUsePermission=serializer.data['dataUsePermission'],
                user=request.user
            )
            print("UUUUUUUUUUUU")
            print(new.save())
            print("UUUUUUUUUUUU")
            
            new.submit(file)
        
        def print_id():
            a = new.refresh_from_db()
            print(a.id)

        transaction.on_commit(print_id)

        return Response({'id': new.id})

        s_serializer = SubmissionSerializer(new)
        return Response(s_serializer.data)
        # Or
        # return JsonResponse(serializer.data, status=201)

        print(new, new.id)
        return Response()   # Return a satisfactory response, at least including the id
        '''
        '''
        return JsonResponse(
            {
                'status': 'success',
                'submission': {
                    "id": new.id,
                    "file": new.file,
                    "mode": new.mode,
                    "state": new.state,
                    "dataUsePermission": new.dataUsePermission,
                    "submitTime": new.submitTime,
                    "result": new.result,
                    "user": new.user
                } # new
            }
        )
        '''

class UserViewSet(ViewSet):
    queryset = Submission.objects.all()

    '''
    Example input
    {
        "username": "seckin",
        "password1": "inscalisir159",
        "password2": "inscalisir159"
    }
    '''
    @action(methods=['post'], detail=False)
    def registration(self, request):
        
        if request.method == 'POST':
            form = UserCreationForm(request.data)
            if form.is_valid():
                user = form.save()
                login(request, user)
                return JsonResponse({'status': 'success'})
            else:
                print(form.errors, form.fields, request.data)
        else:
            form = UserCreationForm()
        return JsonResponse({'status': 'error', 'errors': form.errors})

    '''
    Example input
    {
        "username": "seckin",
        "password": "inscalisir159"
    }
    '''
    @action(methods=['post'], detail=False)
    def login(self, request):
        if request.method == 'POST':
            username = request.data.get('username')
            password = request.data.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                return JsonResponse({'status': 'success'})
            else:
                return JsonResponse({'status': 'error', 'message': 'Invalid credentials'}, status=400)
        return JsonResponse({'status': 'error', 'message': 'Invalid request method'}, status=400)

    @action(methods=['post'], detail=False)
    def logout(self, request):
        logout(request)
        return JsonResponse({'status': 'success'})
