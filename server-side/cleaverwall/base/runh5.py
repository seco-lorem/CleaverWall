import time
import tensorflow as tf
from tensorflow import keras
from keras.models import load_model
import numpy as np
from . import header_feature_extraction as fe

# https://stackoverflow.com/questions/67261604/is-there-any-other-way-to-save-and-load-keras-models


def classify_pe_header(file, model, standart_scaler_header):
    malware = ['benign',  'trojan.',  'virus.', 'worm.']

    prev_time = time.time()
    sample = fe.extract_header_features(file)
    sample = np.array(sample).reshape(1,-1)
    sample = standart_scaler_header.transform(sample)
    pred = model.predict(sample)[0]
    print(f"Predicted label:{malware[pred]} Elapsed time:{time.time()-prev_time}s")
    return {
        "label": malware[pred],
        "time": time.time()-prev_time
    }