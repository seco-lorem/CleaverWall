import requests
import pandas as pd
import numpy as np
import time
import xgboost as xgb
import pickle

REST_URL_SUBMIT = "http://localhost:8090/tasks/create/file"
REST_URL_GET = "http://localhost:8090/tasks/report/"
SAMPLE_FILE = "/home/ardaortlek/Desktop/Sandbox_Scripts/SepPDF.exe"
HEADERS = {"Authorization": "Bearer <api_key>"}

features = ['InternetOpen', 'GetProcAddress', 'CreateToolhelp32Snapshot', 'HttpOpenRequest', 'ioctlsocket', 'OpenProcess', 'CreateThread', 'SetWindowsHookExA', 'InternetReadFile', 'FindResource', 'CountClipboardFormats', 'WriteProcessMemory', 'free', 'GetEIP', 'GetAsyncKeyState', 'DispatchMessage', 'SizeOfResource', 'GetFileSize', 'GetTempPathA', 'NtUnmapViewOfSection', 'WSAIoctl', 'ReadFile', 'GetTickCount', 'Fopen', 'malloc', 'InternetConnect', 'Sscanf', 'GetKeyState', 'GetModuleHandle', 'ReadProcessMemory', 'LockResource', 'RegSetValueEx', 'ShellExecute', 'IsDebuggerPresent', 'WSASocket', 'VirtualProtect', 'bind', 'WinExec', 'GetForeGroundWindow', 'CreateProcessA', 'LoadLibraryA', 'socket', 'LoadResource', 'CreateFileA', 'VirtualAllocEx', 'HTTPSendRequest', 'BroadcastSystemMessage', 'FindWindowsA', 'Process32First', 'CreateRemoteThread', 'GetWindowsThreadProcessId', 'URLDownloadToFile', 'SetWindowsHookEx', 'GetMessage', 'VirtualAlloc', 'MoveFileA', 'FindResourceA', 'GetWindowsDirectoryA', 'PeekMessageA', 'FindClose', 'MapVirtualKeyA',
            'SetEnvironmentVariableA', 'GetKeyboardState', 'mciSendStringA', 'GetFileType', 'RasEnumConnectionsA', 'FlushFileBuffers', 'GetVersionExA', 'ioctlsocket', 'WSAAsyncSelect', 'GetCurrentThreadId', 'LookupPrivilegeValueA', 'GetCurrentProcess', 'SetStdHandle', 'WSACleanup', 'WSAStartup', 'CreateMutexA', 'GetForegroundWindow', 'SetKeyboardState', 'OleInitialize', 'SetUnhandledExceptionFilter', 'UnhookWindowsHookEx', 'GetModuleHandleA', 'GetSystemDirectoryA', 'RegOpenKey', 'GetFileAttributesA', 'AdjustTokenPrivileges', 'FreeLibrary', 'GetStartupInfoA', 'RasGetConnectStatusA', 'OpenProcessToken', 'PostMessageA', 'GetTickCount', 'GetExitCodeProcess', 'SetFileTime', 'DispatchMessageA', 'RegDeleteValueA', 'FreeEnvironmentStringsA', 'CallNextHookEx', 'GetUserNameA', 'HeapCreate', 'GlobalMemoryStatus', 'SetFileAttributesA', 'URLDownloadToFileA', 'RaiseException', 'WSAGetLastError', 'RegCreateKeyExA', 'keybd_event', 'ExitWindowsEx', 'GetCommandLineA', 'RegCreateKeyA', 'FreeEnvironmentStringsW', 'UnhandledExceptionFilter', 'GetExitCodeThread', 'PeekNamedPipe']
features = list(map(str.lower, features))

with open(SAMPLE_FILE, "rb") as sample:
    files = {"file": ("temp_file_name", sample)}
    r = requests.post(REST_URL_SUBMIT, headers=HEADERS, files=files)

# Add your code to error checking for r.status_code.
task_id = r.json()["task_id"]

REST_URL_GET = REST_URL_GET + str(task_id)

while True:
    try:
        r = requests.get(REST_URL_GET, headers=HEADERS)
        report = r.json()
        if r.status_code == 200:
            break
    except:
        pass
    time.sleep(2.5)


api_calls = []

try:
    api_keys = report['behavior']['apistats']
except:
    api_keys = []

for key in api_keys:
    api_calls = api_calls + list(api_keys[key].keys())

api_calls = list(map(str.lower, api_calls))

x = np.zeros((1, len(features)))

for index, feature in enumerate(features):
    if feature in api_calls:
        x[0, index] = 1


standart_scaler_dynamic = None
with open(f'/home/ardaortlek/Desktop/Sandbox_Scripts/standart_scaler_dynamic_1.0.0.pickle', 'rb') as f:
    standart_scaler_dynamic = pickle.load(f)

x = standart_scaler_dynamic.transform(x)

# Load dynamic model
xgb_clf = xgb.XGBClassifier(objective="multiclass:softmax", num_class=4)
xgb_clf.load_model(
    "/home/ardaortlek/Desktop/Sandbox_Scripts/dynamic_model_1.0.0.json")

pred = xgb_clf.predict(x)[0]

# Labels
labels = ['benign', 'trojan', 'virus', 'worm']

print(labels[pred])
