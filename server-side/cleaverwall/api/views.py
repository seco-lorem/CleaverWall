from rest_framework.response import Response
from rest_framework.decorators import api_view
from base.models import Submission
from .serializers import SubmissionSerializer


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
        print(serializer)
    return Response(serializer.data)

