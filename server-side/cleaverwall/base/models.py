import json
import pickle
from django.db import models
from django.contrib.auth.models import User
import requests
from . import runh5
from . import numpy_array_encoder
from django.db import transaction
from tensorflow import keras
from keras.models import load_model
import os


f = open("./../../keys.json")
ubuntuserver_headers = {"api_key": json.load(f)["ubuntuserver_api_key"]}
f.close()

model_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'model_header_1.0.0.h5')
ml_model = load_model(model_file, compile=False)

standart_scaler_header = None
with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'standart_scaler_header_1.0.0.pickle'), 'rb') as f:
    standart_scaler_header=pickle.load(f)

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
    def submit(self, file, id_tobe):

        to_return = None

        if self.mode == 2:
            try:
                r = requests.post("http://0.0.0.0:8001/?id_by_client=" + str(id_tobe), files={'file': file})
            except requests.exceptions.RequestException as e:
                print(e)
                r = requests.Response()
                r.status_code = 500
            if r.status_code != 200:    # Raise HTTP 500 or return a response with error?
                to_return = {"result": {
                    "label": "UbuntuServerError",
                    "time": -1,
                    "valid": False
                }}
            else:
                to_return = {"result": {
                    "label": "pending",
                    "time": -1,
                    "valid": True
                }}
        else:
            result = runh5.classify_pe_header(file, ml_model, standart_scaler_header)
            result["valid"] = True
            to_return = { "result": result} 
    
        return to_return
    
