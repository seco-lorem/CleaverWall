from rest_framework import serializers
from base.models import Submission

# Serializer kullanmayı düzgünce öğren: https://www.django-rest-framework.org/api-guide/serializers/
class SubmissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Submission
        fields = '__all__'
        # File: https://joel-hanson.medium.com/drf-how-to-make-a-simple-file-upload-api-using-viewsets-1b1e65ed65ca


##########################################
# Serializers define the API representation.
# https://docs.djangoproject.com/en/4.1/topics/http/file-uploads/
class UploadSerializer(serializers.Serializer):
    file = serializers.FileField()
    mode = serializers.IntegerField()    # !!!!!!!!!!
    state = serializers.IntegerField()    # !!!!!!!!!
    dataUsePermission = serializers.BooleanField()
    class Meta:
        fields = ['file', 'mode', 'userKey', 'state', 'dataUsePermission']