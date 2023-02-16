import time
from get_md5 import get_md5
from header_feature_extraction import extract_header_features
import pandas as pd
import os
import pickle


df = pd.DataFrame(columns=[
    "Machine",
    "SizeOfOptionalHeader",
    "Characteristics",
    "MajorLinkerVersion",
    "MinorLinkerVersion",
    "SizeOfCode",
    "SizeOfInitializedData",
    "SizeOfUninitializedData",
    "AddressOfEntryPoint",
    "BaseOfCode",
    "BaseOfData",
    "ImageBase",
    "SectionAlignment",
    "FileAlignment",
    "MajorOperatingSystemVersion",
    "MinorOperatingSystemVersion",
    "MajorImageVersion",
    "MinorImageVersion",
    "MajorSubsystemVersion",
    "MinorSubsystemVersion",
    "SizeOfImage",
    "SizeOfHeaders",
    "CheckSum",
    "Subsystem",
    "DllCharacteristics",
    "SizeOfStackReserve",
    "SizeOfStackCommit",
    "SizeOfHeapReserve",
    "SizeOfHeapCommit",
    "LoaderFlags",
    "NumberOfRvaAndSizes",
    "SectionsNb",
    "SectionsMeanEntropy",
    "SectionsMinEntropy",
    "SectionsMaxEntropy",
    "SectionsMeanRawsize",
    "SectionsMinRawsize",
    "SectionMaxRawsize",
    "SectionsMeanVirtualsize",
    "SectionsMinVirtualsize",
    "SectionMaxVirtualsize",
    "ImportsNbDLL",
    "ImportsNb",
    "ImportsNbOrdinal",
    "ExportNb",
    "ResourcesNb",
    "ResourcesMeanEntropy",
    "ResourcesMinEntropy",
    "ResourcesMaxEntropy",
    "ResourcesMeanSize",
    "ResourcesMinSize",
    "ResourcesMaxSize",
    "LoadConfigurationSize",
    "md5",
    "label"
]
)

# Load saved paths
pickle_path = 'C:\\Users\\arda_\\Desktop\\cleaver\\exe_paths.pickle'
exe_paths = None
with open(pickle_path, 'rb') as f:
    exe_paths = pickle.load(f)

for index, exe_path in enumerate(exe_paths):
    prev = time.time()
    try:
        md5_benign = get_md5(exe_path)
        header_features = extract_header_features(exe_path)
        header_features.extend([md5_benign, "benign"])
        df.loc[len(df.index)] = header_features
        print(f"Took {time.time()-prev} seconds. {df.shape}")
    except Exception as e:
        print(f"{e} for {exe_path}")

# Save the dataframe
df_path = 'C:\\Users\\arda_\\Desktop\\cleaver\\benign_header_features.pkl'
df.to_pickle(df_path)
