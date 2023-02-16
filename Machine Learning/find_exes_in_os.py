import glob
import pickle

total_executables_needed = 10000
root_dir = "C:\\"
exe_paths = []

# Exclude recyle bin
exes = glob.iglob("[!$Recycle.Bin]*\\**\\*.exe",
                  root_dir=root_dir, recursive=True)

for i in range(total_executables_needed):
    try:
        exe_path = f"{root_dir}{exes.__next__()}"
        print(f"{i+1}th executable path = {exe_path}")
        exe_paths.append(exe_path)

    except:
        print(
            f"Not enough executables are available for given number. There are only {i} executables available.")
        break

# Save the paths
pickle_path = 'C:\\Users\\arda_\\Desktop\\cleaver\\exe_paths.pickle'
with open(pickle_path, 'wb') as f:
    pickle.dump(exe_paths, f, protocol=pickle.HIGHEST_PROTOCOL)
