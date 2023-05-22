import time
import tensorflow as tf
from tensorflow import keras
from keras.models import load_model
import numpy as np
from . import header_feature_extraction as fe
import array
import PIL
from PIL import Image

# https://stackoverflow.com/questions/67261604/is-there-any-other-way-to-save-and-load-keras-models
malware = ['benign',  'trojan.',  'virus.', 'worm.']

def classify_pe_header(file, model, standart_scaler_header):    

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

def classif_pe_image(file, model):
    size = file.size
    print(size)
    
    
    prev_time = time.time()
    width = 224

    remainder = size % width


    f = file
    a = array.array("B")
    a.fromfile(f, size-remainder)  # Do not add remainder bytes
    f.close()

    g = np.reshape(a, (int(len(a)/width), width))
    g = np.uint8(g)
    height = g.shape[0]

    image = Image.frombuffer(
        'L', (width, height), g, 'raw', 'L', 0, 1)


    # Resize the image to provide consistency for the modal
    image = image.resize((224, 224), PIL.Image.BILINEAR)
    sample = np.asarray(image).reshape((224,224,1)) / 255

   

    sample = np.expand_dims(sample, axis=0) # image shape is (1, 224, 224, 1)

    #sample = tf.convert_to_tensor(sample)
    #print(sample)
    pred = model.predict(sample,verbose = 0)
    #print(pred)  
    #print(f"Predicted label:{malware[np.argmax(pred,axis=1)[0]]} Elapsed time:{time.time()-prev_time} seconds")
    return {
        "label": malware[np.argmax(pred,axis=1)[0]],
        "time": time.time()-prev_time
    }