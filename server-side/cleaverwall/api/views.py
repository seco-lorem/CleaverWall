from rest_framework.response import Response
from rest_framework.decorators import api_view


dummy_counter_state = 0
@api_view(['GET'])
def getData(request):
    global dummy_counter_state
    dummy_counter_state += 1
    resp = {'request':"Hello", 'sessionS_request_no':dummy_counter_state}
    return Response(resp)
