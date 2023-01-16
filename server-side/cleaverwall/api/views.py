from rest_framework.response import Response
from rest_framework.decorators import api_view, action
from rest_framework.viewsets import ViewSet
from django.shortcuts import get_object_or_404
from base.models import Submission
from .serializers import SubmissionSerializer, UploadSerializer


class SubmissionViewSet(ViewSet):
    queryset = Submission.objects.all()
    serializer_class = UploadSerializer
    
    def retrieve(self, request, pk):
        submission = get_object_or_404(Submission, pk=pk)
        serializer = SubmissionSerializer(submission)
        return Response(serializer.data)
    
    def list(self, request):
        submissions = Submission.objects.all()
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
            userKey=serializer.data['userKey'],
            state=serializer.data['state'],
            dataUsePermission=serializer.data['dataUsePermission']
        )
        new.save()
        new.submit()
        return Response()