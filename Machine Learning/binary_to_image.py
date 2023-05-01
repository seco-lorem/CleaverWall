import os
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
import PIL
import array
import pickle
import time
from get_md5 import get_md5

pickle_path = 'C:\\Users\\arda_\\Desktop\\cleaver\\exe_paths_2.pickle'
exe_paths = None
with open(pickle_path, 'rb') as f:
    exe_paths = pickle.load(f)


# width is default 224
def convert_binary_to_image(filepath,  md5):
    base_path = 'C:\\Users\\arda_\\Desktop\\cleaver\\images'
    width = 224

    f = open(filepath, 'rb')
    file_length = os.path.getsize(filepath)
    remainder = file_length % width

    a = array.array("B")
    a.fromfile(f, file_length-remainder)  # Do not add remainder bytes
    f.close()

    g = np.reshape(a, (int(len(a)/width), width))
    g = np.uint8(g)
    height = g.shape[0]

    image = Image.frombuffer(
        'L', (width, height), g, 'raw', 'L', 0, 1)

    # Resize the image to provide consistency for the modal
    image = image.resize((224, 224), PIL.Image.BILINEAR)
    image.save(f"{base_path}\\{md5}.png")


for exe_path in exe_paths:

    try:
        prev = time.time()
        md5 = get_md5(exe_path)
        convert_binary_to_image(filepath=exe_path,  md5=md5)
        print(time.time()-prev)
    except Exception as e:
        print(f"{e} for {md5}")
