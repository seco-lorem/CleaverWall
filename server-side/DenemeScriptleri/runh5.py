import tensorflow as tf
from tensorflow import keras
from keras.models import load_model
import numpy as np
import header_feature_extraction as fe

model =load_model("./model_1.0.1.h5", compile=False)

print(model.summary())

def get_file_features(file):
    features = fe.extract_header_features(file)
    features = np.array([features])
    print(features.shape)
    #features = np.transpose(features)
    print(len(features))
    output = model.predict(features)
    return output

print(get_file_features("SETUP.EXE"))
