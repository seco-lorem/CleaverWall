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
import xgboost as xgb
import tensorflow as tf
from base.logger import log

f = open("./../../keys.json")
ubuntuserver_headers = {"api_key": json.load(f)["ubuntuserver_api_key"]}
f.close()

model_file = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'model_header_1.0.1_xgb.json')
ml_model= xgb.XGBClassifier(objective="multiclass:softmax", num_class=4)
ml_model.load_model(
    model_file)

standart_scaler_header = None
with open(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'standart_scaler_header_1.0.1_xgb.pickle'), 'rb') as f:
    standart_scaler_header=pickle.load(f)
    
model_image_path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'model_image_1.0.2_1.h5')
image_model = tf.keras.models.load_model(model_image_path)

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
            log("Sending dynamic analysis request to the Ubuntu Server.")
            try:
                r = requests.post("http://0.0.0.0:8001/?id_by_client=" + str(id_tobe), files={'file': file}, headers=ubuntuserver_headers)
            except requests.exceptions.RequestException as e:
                print(e)
                r = requests.Response()
                r.status_code = 500
            if r.status_code != 200:    # Raise HTTP 500 or return a response with error?
                log("An error occured in the using the Ubuntu Server.")
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
        elif self.mode == 3:
            log("Running file-image recognition model.")
            result  = runh5.classif_pe_image(file,image_model)
            result["valid"] = True
            to_return = { "result": result} 
        else:
            log("Running header classification model.")
            result = runh5.classify_pe_header(file, ml_model, standart_scaler_header)
            result["valid"] = True
            to_return = { "result": result} 
        
        log("Finalized submission results.")
        return to_return
    
