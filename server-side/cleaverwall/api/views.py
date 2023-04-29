from asyncio import sleep, tasks
import json
import os
import requests
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
from django.db.models.signals import post_save


f = open("./../../keys.json")
ubuntuserver_headers = {"api_key": json.load(f)["ubuntuserver_api_key"]}
f.close()

# Additionally keep track of max_id statically, by post_save signals,
# to communicate with client without database concurrency issues during requests.
try:
    max_id = Submission.objects.latest('id').id
except Submission.DoesNotExist:
    max_id = 0
def update_maxid(*args, **kwargs):
    global max_id
    max_id += 1
post_save.connect(update_maxid, sender=Submission)


class SubmissionViewSet(ViewSet):
    authentication_classes = [SessionAuthentication, TokenAuthentication]
    permission_classes = [IsAuthenticated]
    queryset = Submission.objects.all()
    serializer_class = UploadSerializer
    

    # I'm not sure if this is needed as filtering is done in each method separately anyway
    def get_queryset(self):
        return self.queryset.filter(user=self.request.user)
    
    def retrieve(self, request, pk):
        submission = get_object_or_404(Submission, pk=pk, user=request.user)
        serializer = SubmissionSerializer(submission)
        # Check if a pending request is finalized
        if serializer.data["result"]["label"] == "pending":
            try:
                r = requests.get("http://localhost/" + str(serializer.data["id"]), headers=ubuntuserver_headers)
            except requests.exceptions.RequestException as e:
                print(e)
                r = requests.Response()
                r.status_code = 500
            to_return = serializer.data
            if r.status_code != 200:    # Raise HTTP 500 ?
                to_return["result"] = {
                    "label": "UbuntuServerError",
                    "time": -1,
                    "valid": False
                }
            else:
                to_return["result"] = r.json()  # or just plain r?
                submission.result = to_return["result"]
                submission.save()
            print(r.json())
        return Response(to_return)
    
    def list(self, request):
        submissions = Submission.objects.filter(user=request.user)
        serializer = SubmissionSerializer(submissions, many=True)
        return Response(serializer.data)

    # Create a submission and start the scanning process
    def create(self, request):
        
        # Check Submission constraints
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
        # TODO: Before creating a new submission,
        # check if already exists using md5.
        #   check if valid previous scan exists
        #       return that scan
        new = Submission(
            file=file,
            mode=serializer.data['mode'],
            state=0,
            dataUsePermission=serializer.data['dataUsePermission'],
            user=request.user
        )
        temp_newmax = max_id + 1
        result_tmp = new.submit(file, temp_newmax)
        new.result = result_tmp["result"]
        new.save()

        if result_tmp is None:
            return Response("Analysis mode: " + str(new.mode) + " is not valid.", status=HTTP_400_BAD_REQUEST)
        
        result_tmp["submission_id"] = temp_newmax
        return JsonResponse(result_tmp, status=201)


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
