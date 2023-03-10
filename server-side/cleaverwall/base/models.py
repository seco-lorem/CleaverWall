import json
import pickle
from django.db import models
from django.contrib.auth.models import User
from . import runh5
from . import numpy_array_encoder
from django.db import transaction

from tensorflow import keras
from keras.models import load_model
import os

model_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'model_header_1.0.0.h5')
ml_model = load_model(model_file, compile=False)
print(ml_model.summary())


standart_scaler_header = None
with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'standart_scaler_header_1.0.0.pickle'), 'rb') as f:
    standart_scaler_header=pickle.load(f)

# Validators
def is_portable_executable(value):
    if False:
        raise serializers.ValidationError('Not a Portable Executable File')
# field olarak kullanmaya (Did not migrate db, file is a charfield)
    file = models.FileField(validators=[is_portable_executable]) # !!


class Submission(models.Model):
    id = models.IntegerField(primary_key=True)
    file = models.CharField(max_length=200) # only store the name for now
    mode = models.IntegerField()    # Not defined yet!
    state = models.IntegerField()   # Not defined yet!
    dataUsePermission = models.BooleanField()
    submitTime = models.DateTimeField(auto_now_add=True)
    result = models.JSONField(default=None, blank=True, null=True) #models.ForeignKey(SubmissionResult, on_delete=models.CASCADE, default=None, blank=True, null=True)
    user = models.ForeignKey(User, on_delete=models.SET_DEFAULT, default=1)

    # start scanning
    def submit(self, file):

        print(self.mode)
        to_return = None

        if self.mode == 222:
            pass # For example call the VM service for dynamic analysis
            # Or throw NotImplementedError() at else?
        else:
            result_json = json.dumps(
                runh5.classify_pe_header(file, ml_model, standart_scaler_header)
            )
            to_return = { "result": result_json} 
    
        return to_return
    
        # çok olay çıkarmadan return etmesi için asenkronluğu, ve state'i update etmeyi düşün
            # Asenkronluk işi yattı: https://stackoverflow.com/questions/53911424/async-in-django-rest-framework
            # TODO Hem failure point'i ayırmak hem de bu işi çözmek için ayrı bir server uygulaması kurcaz.
            # Yani burası bottleneck yaratana kadar (Muhtemelen Dynamic analysis), düz senkron bir şekilde halledicez.
