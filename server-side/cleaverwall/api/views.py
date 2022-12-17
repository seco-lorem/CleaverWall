from rest_framework.response import Response
from rest_framework.decorators import api_view
from rest_framework.viewsets import ViewSet
from base.models import Submission
from .serializers import SubmissionSerializer, UploadSerializer


dummy_counter_state = 0
@api_view(['GET'])
def getData(request):
    print("a")
    submissions = Submission.objects.all()
    serializer = SubmissionSerializer(submissions, many=True)
    return Response(serializer.data)

    global dummy_counter_state
    dummy_counter_state += 1
    resp = {'request':"Hello", 'sessionS_request_no':dummy_counter_state}
    return Response(resp)


# Serializer kullanmayı düzgünce öğren: https://www.django-rest-framework.org/api-guide/serializers/
@api_view(['POST'])
def addSubmission(request):
    print("a")
    serializer = SubmissionSerializer(data=request.data)
    if serializer.is_valid():
        serializer.save()
        print("a")
    else:
        print(serializer.errors)
    return Response(serializer.data)


#######################################

# Where to put Business Logic?: https://forum.djangoproject.com/t/where-to-put-business-logic-in-django/282/4

# from .serializers import UploadSerializer

# ViewSets define the view behavior.
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
            print(serializer.data, file)
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


       # print(request.FILES)
       # file = request.FILES.get('file')
       # content_type = file.content_type
       # response = "POST API and you have uploaded a {} file".format(content_type)
        if serializer.is_valid():
            serializer.save()
            print("a")
        else:
            print(serializer.errors)
        return Response(serializer.data)

        file = request.FILES.get('file')
        content_type = file.content_type
        response = "POST API and you have uploaded a {} file".format(content_type)
        return Response(response)
