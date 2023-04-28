from rest_framework import serializers
from base.models import Submission


class SubmissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Submission
        fields = '__all__'


class UploadSerializer(serializers.Serializer):
    file = serializers.FileField()
    mode = serializers.IntegerField()   # 1 or else: static header
                                        # 2: dynamic via ubuntu server
                                        # 3: to image recognition
    dataUsePermission = serializers.BooleanField()
    class Meta:
        fields = ['id', 'file', 'mode', 'userKey', 'state', 'dataUsePermission']