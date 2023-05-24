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
from base.logger import log
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
        log("Returning the submission: " + str(pk))
        submission = get_object_or_404(Submission, pk=pk, user=request.user)
        serializer = SubmissionSerializer(submission)
        # Check if a pending request is finalized
        to_return = serializer.data
        if serializer.data["result"]["label"] == "pending":
            log("Checking if the pending submission's progress.")
            try:
                r = requests.get("http://0.0.0.0:8001/" + str(serializer.data["id"]), headers=ubuntuserver_headers)
            except requests.exceptions.RequestException as e:
                print(e)
                r = requests.Response()
                r.status_code = 500
            if r.status_code != 200:    # Raise HTTP 500 ?
                log("An error occured in the using the Ubuntu Server.")
                to_return["result"] = {
                    "label": "UbuntuServerError",
                    "time": -1,
                    "valid": False
                }
            else:
                to_return["result"] = r.json()  # or just plain r?
                submission.result = to_return["result"]
                submission.save()
                log("Updated the result to return.")
            print(r.json())
        return Response(to_return)
    
    def list(self, request):
        log("Returning a list of the user's submission history.")
        submissions = Submission.objects.filter(user=request.user)
        serializer = SubmissionSerializer(submissions, many=True)
        return Response(serializer.data)

    # Create a submission and start the scanning process
    def create(self, request):
        log("Create submission request received")
        
        # Check Submission constraints
        serializer = UploadSerializer(data=request.data)
        if not serializer.is_valid():
            print(serializer.errors)
            log("Recieved request fields are not valid, responded with errors.")
            return Response(serializer.errors, status=HTTP_400_BAD_REQUEST)
        
        file = request.FILES.get('file')
        _, ext = os.path.splitext(file.name)
        if ext.lower() != ".exe":
            log("Recieved file is not .exe, responded with an error.")
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
        log("Submission saved to the database.")

        # This if is not supposed to be entered
        if result_tmp is None:
            log("Recieved Anaysis mode: " + str(new.mode) + " is not valid, responded with an error.")
            return Response("Analysis mode: " + str(new.mode) + " is not valid.", status=HTTP_400_BAD_REQUEST)
        
        result_tmp["submission_id"] = temp_newmax
        log("Responded with submission information.")
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
            log("Request to register new user received.")
            form = UserCreationForm(request.data)
            if form.is_valid():
                user = form.save()
                login(request, user)
                log("Success.")
                return JsonResponse({'status': 'success'})
            else:
                log("Error validating registration data, an error returned.")
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
            log("Request to login received.")
            username = request.data.get('username')
            password = request.data.get('password')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                log("Success.")
                return JsonResponse({'status': 'success'})
            else:
                log("Error validating user data, an error returned.")
                return JsonResponse({'status': 'error', 'message': 'Invalid credentials'}, status=400)
        return JsonResponse({'status': 'error', 'message': 'Invalid request method'}, status=400)

    @action(methods=['post'], detail=False)
    def logout(self, request):
        logout(request)
        log("User logged out.")
        return JsonResponse({'status': 'success'})
