from django.db import models


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
