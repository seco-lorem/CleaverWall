from django.db import models


# https://docs.djangoproject.com/en/4.1/topics/db/models/

# Validators
def is_portable_executable(value):
    if False:
        raise serializers.ValidationError('Not a Portable Executable File')
# aaaa        
    file = models.FileField(validators=[is_portable_executable]) # !!

class SubmissionResult(models.Model):
    predictions = models.JSONField()

class Submission(models.Model):
    id = models.IntegerField(primary_key=True)
    file = models.CharField(max_length=200) # !!
    mode = models.IntegerField()    # !!!!!!!!!!
    userKey = models.IntegerField()    # !!!!!!!
    state = models.IntegerField()    # !!!!!!!!!
    dataUsePermission = models.BooleanField()
    submitTime = models.DateTimeField(auto_now_add=True)
    result = models.ForeignKey(SubmissionResult, on_delete=models.CASCADE, default=None, blank=True, null=True)
