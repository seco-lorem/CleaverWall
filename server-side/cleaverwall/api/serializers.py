from rest_framework import serializers
from base.models import Submission

# Serializer kullanmayı düzgünce öğren: https://www.django-rest-framework.org/api-guide/serializers/
class SubmissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Submission
        fields = '__all__'
