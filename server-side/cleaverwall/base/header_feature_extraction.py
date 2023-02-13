import pefile
import math

#https://github.com/pratikpv/malware_detect2/blob/master/data_utils/extract_pe_features.py
#https://github.com/Te-k/malware-classification/blob/master/generatedata.py


"""
Machine, SizeOfOptionalHeader, Characteristics, MajorLinkerVersion, MinorLinkerVersion, SizeOfCode, SizeOfInitializedData,
SizeOfUninitializedData, AddressOfEntryPoint, BaseOfCode, BaseOfData, ImageBase, SectionAlignment, FileAlignment,
MajorOperatingSystemVersion, MinorOperatingSystemVersion, MajorImageVersion, MinorImageVersion, MajorSubsystemVersion,
MinorSubsystemVersion, SizeOfImage, SizeOfHeaders, CheckSum, Subsystem, DllCharacteristics, SizeOfStackReserve,
SizeOfStackCommit, SizeOfHeapReserve, SizeOfHeapCommit, LoaderFlags, NumberOfRvaAndSizes, SectionsNb,
SectionsMeanEntropy, SectionsMinEntropy, SectionsMaxEntropy, SectionsMeanRawsize, SectionsMinRawsize, SectionMaxRawsize,
SectionsMeanVirtualsize, SectionsMinVirtualsize, SectionMaxVirtualsize, ImportsNbDLL, ImportsNb, ImportsNbOrdinal, ExportNb,
ResourcesNb, ResourcesMeanEntropy, ResourcesMinEntropy, ResourcesMaxEntropy, ResourcesMeanSize, ResourcesMinSize, ResourcesMaxSize, LoadConfigurationSize, VersionInformationSize
"""

"""Entropy is computed on the
byte-level representation of each malware sample and
the goal is to measure the disorder of the distribution
of bytes in the bytecode as a value between 0 (Order) and 8 (Randomness).
"""
def get_entropy(data):
    if len(data) == 0:
        return 0.0
    byte_counts = [0] * 256
    for byte_ in data:
        byte_counts[byte_ if isinstance(byte_, int) else ord(byte_)] += 1

    entropy = 0
    for byte_count in byte_counts:
        if byte_count:
            p_x = float(byte_count) / len(data)
            entropy -= p_x * math.log(p_x, 2)

    return entropy


def get_resources(pe):
    """Extract resources :
    [entropy, size]"""
    resources = []
    if hasattr(pe, 'DIRECTORY_ENTRY_RESOURCE'):
        try:
            for resource_type in pe.DIRECTORY_ENTRY_RESOURCE.entries:
                if hasattr(resource_type, 'directory'):
                    for resource_id in resource_type.directory.entries:
                        if hasattr(resource_id, 'directory'):
                            for resource_lang in resource_id.directory.entries:
                                data = pe.get_data(resource_lang.data.struct.OffsetToData,
                                                   resource_lang.data.struct.Size)
                                size = resource_lang.data.struct.Size
                                entropy = get_entropy(data)

                                resources.append([entropy, size])
        except Exception as e:
            return resources
    return resources


def get_version_info(pe):
    """Return version infos"""
    res = {}
    for fileinfo in pe.FileInfo:
        if fileinfo.Key == 'StringFileInfo':
            for st in fileinfo.StringTable:
                for entry in st.entries.items():
                    res[entry[0]] = entry[1]
        if fileinfo.Key == 'VarFileInfo':
            for var in fileinfo.Var:
                res[var.entry.items()[0][0]] = var.entry.items()[0][1]
    if hasattr(pe, 'VS_FIXEDFILEINFO'):
        res['flags'] = pe.VS_FIXEDFILEINFO.FileFlags
        res['os'] = pe.VS_FIXEDFILEINFO.FileOS
        res['type'] = pe.VS_FIXEDFILEINFO.FileType
        res['file_version'] = pe.VS_FIXEDFILEINFO.FileVersionLS
        res['product_version'] = pe.VS_FIXEDFILEINFO.ProductVersionLS
        res['signature'] = pe.VS_FIXEDFILEINFO.Signature
        res['struct_version'] = pe.VS_FIXEDFILEINFO.StrucVersion
    return res


def extract_header_features(file):
    res = []    
    pe = pefile.PE(data=file.read())
#    pe = pefile.PE(exe_path)
    res.append(pe.FILE_HEADER.Machine)
    res.append(pe.FILE_HEADER.SizeOfOptionalHeader)
    res.append(pe.FILE_HEADER.Characteristics)
    res.append(pe.OPTIONAL_HEADER.MajorLinkerVersion)
    res.append(pe.OPTIONAL_HEADER.MinorLinkerVersion)
    res.append(pe.OPTIONAL_HEADER.SizeOfCode)
    res.append(pe.OPTIONAL_HEADER.SizeOfInitializedData)
    res.append(pe.OPTIONAL_HEADER.SizeOfUninitializedData)
    res.append(pe.OPTIONAL_HEADER.AddressOfEntryPoint)
    res.append(pe.OPTIONAL_HEADER.BaseOfCode)
    try:
        res.append(pe.OPTIONAL_HEADER.BaseOfData)
    except AttributeError:
        res.append(0)
    res.append(pe.OPTIONAL_HEADER.ImageBase)
    res.append(pe.OPTIONAL_HEADER.SectionAlignment)
    res.append(pe.OPTIONAL_HEADER.FileAlignment)
    res.append(pe.OPTIONAL_HEADER.MajorOperatingSystemVersion)
    res.append(pe.OPTIONAL_HEADER.MinorOperatingSystemVersion)
    res.append(pe.OPTIONAL_HEADER.MajorImageVersion)
    res.append(pe.OPTIONAL_HEADER.MinorImageVersion)
    res.append(pe.OPTIONAL_HEADER.MajorSubsystemVersion)
    res.append(pe.OPTIONAL_HEADER.MinorSubsystemVersion)
    res.append(pe.OPTIONAL_HEADER.SizeOfImage)
    res.append(pe.OPTIONAL_HEADER.SizeOfHeaders)
    res.append(pe.OPTIONAL_HEADER.CheckSum)
    res.append(pe.OPTIONAL_HEADER.Subsystem)
    res.append(pe.OPTIONAL_HEADER.DllCharacteristics)
    res.append(pe.OPTIONAL_HEADER.SizeOfStackReserve)
    res.append(pe.OPTIONAL_HEADER.SizeOfStackCommit)
    res.append(pe.OPTIONAL_HEADER.SizeOfHeapReserve)
    res.append(pe.OPTIONAL_HEADER.SizeOfHeapCommit)
    res.append(pe.OPTIONAL_HEADER.LoaderFlags)
    res.append(pe.OPTIONAL_HEADER.NumberOfRvaAndSizes)
    res.append(len(pe.sections))
    entropy = list(map(lambda x: x.get_entropy(), pe.sections))
    if len(entropy) > 0:
        res.append(sum(entropy) / float(len(entropy)))
        res.append(min(entropy))
        res.append(max(entropy))
    else:
        res.append(0)
        res.append(0)
        res.append(0)

    raw_sizes = list(map(lambda x: x.SizeOfRawData, pe.sections))
    if len(raw_sizes) > 0:
        res.append(sum(raw_sizes) / float(len(raw_sizes)))
        res.append(min(raw_sizes))
        res.append(max(raw_sizes))
    else:
        res.append(0)
        res.append(0)
        res.append(0)

    virtual_sizes = list(map(lambda x: x.Misc_VirtualSize, pe.sections))
    if len(virtual_sizes) > 0:
        res.append(sum(virtual_sizes) / float(len(virtual_sizes)))
        res.append(min(virtual_sizes))
        res.append(max(virtual_sizes))
    else:
        res.append(0)
        res.append(0)
        res.append(0)
    # Imports
    try:
        res.append(len(pe.DIRECTORY_ENTRY_IMPORT))
        imports = sum([x.imports for x in pe.DIRECTORY_ENTRY_IMPORT], [])
        res.append(len(imports))
        res.append(len(list(filter(lambda x: x.name is None, imports))))
    except AttributeError:
        res.append(0)
        res.append(0)
        res.append(0)
    # Exports
    try:
        res.append(len(pe.DIRECTORY_ENTRY_EXPORT.symbols))
    except AttributeError:
        # No export
        res.append(0)
    # Resources
    resources = get_resources(pe)
    res.append(len(resources))
    if len(resources) > 0:
        entropy = list(map(lambda x: x[0], resources))
        res.append(sum(entropy) / float(len(entropy)))
        res.append(min(entropy))
        res.append(max(entropy))
        sizes = list(map(lambda x: x[1], resources))
        res.append(sum(sizes) / float(len(sizes)))
        res.append(min(sizes))
        res.append(max(sizes))
    else:
        res.append(0)
        res.append(0)
        res.append(0)
        res.append(0)
        res.append(0)
        res.append(0)

    # Load configuration size
    try:
        res.append(pe.DIRECTORY_ENTRY_LOAD_CONFIG.struct.Size)
    except AttributeError:
        res.append(0)

    # Version configuration size
    try:
        version_infos = get_version_info(pe)
        res.append(len(version_infos.keys()))
    except AttributeError:
        res.append(0)
    return res