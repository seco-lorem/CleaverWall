import tensorflow as tf
from tensorflow import keras
from keras.models import load_model
import numpy as np
from . import header_feature_extraction as fe

# https://stackoverflow.com/questions/67261604/is-there-any-other-way-to-save-and-load-keras-models


def classify_pe_header(file, model):
    features = fe.extract_header_features(file)
    features = np.array([features])
    print(features.shape)
    #features = np.transpose(features)
    print(len(features))
    output = model.predict(features)
    return output
