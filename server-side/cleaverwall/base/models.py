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

# TODO: güvenli bir şekilde silebildiğinden emin ol
# Validators
def is_portable_executable(value):
    if False:
        raise serializers.ValidationError('Not a Portable Executable File')
# field olarak kullanmaya (Did not migrate db, file is a charfield)
    file = models.FileField(validators=[is_portable_executable]) # !!


class Submission(models.Model):

    id = models.IntegerField(primary_key=True)
    # md5hash = models.CharField(max_length=32) # TODO
    file = models.CharField(max_length=200) # only store the name for now
    mode = models.IntegerField()    # 1 or else: static header
                                    # 2: dynamic via ubuntu server
                                    # 3: to image recognition
    state = models.IntegerField()   # Not defined yet!
    dataUsePermission = models.BooleanField()
    submitTime = models.DateTimeField(auto_now_add=True)
    result = models.JSONField(default=None, blank=True, null=True)
    '''
    Example results:
    {
        "label": "benign",
        "time": 4.128585338592529,
        "valid": true
    }
    or
    {
        "label": "pending",
        "time": -1,
        "valid": true
    }
    '''
    user = models.ForeignKey(User, on_delete=models.SET_DEFAULT, default=1)

    # start scanning
    def submit(self, file):

        print(self.mode)
        to_return = None

        # select the submission with the md5(or sha256) from db
        # if old_submission[str(self.mode)]["valid"]:
        #   return { "result": old_submission[str(self.mode)]}


        if self.mode == 222:
            pass # For example call the VM service for dynamic analysis
            # Or throw NotImplementedError() at else?
        elif self.mode == 2:
            pass
        else:
            result = runh5.classify_pe_header(file, ml_model, standart_scaler_header)
            result["valid"] = True
            to_return = { "result": result} 
    
        return to_return
    
