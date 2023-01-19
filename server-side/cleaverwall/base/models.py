from django.db import models
from django.contrib.auth.models import User


# https://docs.djangoproject.com/en/4.1/topics/db/models/

# Validators
def is_portable_executable(value):
    if False:
        raise serializers.ValidationError('Not a Portable Executable File')
# field olarak kullanmaya (Did not migrate db, file is a charfield)
    file = models.FileField(validators=[is_portable_executable]) # !!

class SubmissionResult(models.Model):
    predictions = models.JSONField()

class Submission(models.Model):
    id = models.IntegerField(primary_key=True)
    file = models.CharField(max_length=200) # !!
    mode = models.IntegerField()    # !!!!!!!!!!
    state = models.IntegerField()    # !!!!!!!!!
    dataUsePermission = models.BooleanField()
    submitTime = models.DateTimeField(auto_now_add=True)
    result = models.ForeignKey(SubmissionResult, on_delete=models.CASCADE, default=None, blank=True, null=True)
    user = models.ForeignKey(User, on_delete=models.SET_DEFAULT, default=1)

    # start scanning async
    def submit(self, file):
        # Elimizde file düzgünce var mı kontrol et
        # Scan modları ve ayırmayı düşün
        # çok olay çıkarmadan return etmesi için asenkronluğu, ve state'i update etmeyi düşün
        # File'ı disassemble ve header parçala
        # Modeli kullan
        # Sonucu kaydet
        return NotImplementedError()
