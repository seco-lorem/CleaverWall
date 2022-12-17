from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.viewsets import ViewSet
from base.models import Submission
from .serializers import SubmissionSerializer, UploadSerializer


# Where to put Business Logic?: https://forum.djangoproject.com/t/where-to-put-business-logic-in-django/282/4
#######################################

class SubmissionViewSet(ViewSet):
    serializer_class = UploadSerializer

    def list(self, request):
        submissions = Submission.objects.all()
        serializer = SubmissionSerializer(submissions, many=True)
        return Response(serializer.data)

    def create(self, request):
        
        serializer = UploadSerializer(data=request.data)
        file = request.FILES.get('file')
        if serializer.is_valid():
            print(serializer.data, file.content_type)
            new = Submission(
                file=file,
                mode=serializer.data['mode'],
                userKey=serializer.data['userKey'],
                state=serializer.data['state'],
                dataUsePermission=serializer.data['dataUsePermission']
            )
            new.save()
        else:
            print(serializer.errors)
        return Response()
