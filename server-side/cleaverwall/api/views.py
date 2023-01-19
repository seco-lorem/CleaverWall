from rest_framework.response import Response
from rest_framework.decorators import api_view, action
from rest_framework.viewsets import ViewSet
from rest_framework.authentication import SessionAuthentication, TokenAuthentication
from rest_framework.permissions import IsAuthenticated
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import authenticate, login, logout
from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from base.models import Submission
from .serializers import SubmissionSerializer, UploadSerializer


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
        file = request.FILES.get('file')
        if not serializer.is_valid():
            print(serializer.errors)
            return Response()
        
        print(serializer.data, file.content_type)
        new = Submission(
            file=file,
            mode=serializer.data['mode'],
            state=serializer.data['state'],
            dataUsePermission=serializer.data['dataUsePermission'],
            user=request.user
        )
        new.save()
        new.submit()
        return Response()

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
