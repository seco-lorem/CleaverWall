import os
import pickle
import time
from datetime import datetime
from fastapi import FastAPI, HTTPException, Request, UploadFile, File
import sqlite3
import asyncio
import json
import numpy as np
import requests
import xgboost


log_funct = print
def log(log_str):
    now = datetime.now()
    log_funct(now.strftime("%H:%M:%S\t%d/%m/%Y\t") + log_str)

# Initialize the server
app = FastAPI()
conn = sqlite3.connect('requestdb.db', check_same_thread=False)
conn.execute(
    'CREATE TABLE IF NOT EXISTS request (id INTEGER PRIMARY KEY AUTOINCREMENT, id_by_client INTEGER, result BLOB)')
tasks = {}

# Constants
f = open("./../../keys.json")
keys = json.load(f)
API_KEY = keys["ubuntuserver_api_key"]
cuckoo_key = keys["cuckoo"]
f.close()
REST_URL_SUBMIT = "http://localhost:8090/tasks/create/file"
REST_URL_GET = "http://localhost:8090/tasks/report/"
HEADERS = {"Authorization": "Bearer " + cuckoo_key}
features = ['InternetOpen', 'GetProcAddress', 'CreateToolhelp32Snapshot', 'HttpOpenRequest', 'ioctlsocket', 'OpenProcess', 'CreateThread', 'SetWindowsHookExA', 'InternetReadFile', 'FindResource', 'CountClipboardFormats', 'WriteProcessMemory', 'free', 'GetEIP', 'GetAsyncKeyState', 'DispatchMessage', 'SizeOfResource', 'GetFileSize', 'GetTempPathA', 'NtUnmapViewOfSection', 'WSAIoctl', 'ReadFile', 'GetTickCount', 'Fopen', 'malloc', 'InternetConnect', 'Sscanf', 'GetKeyState', 'GetModuleHandle', 'ReadProcessMemory', 'LockResource', 'RegSetValueEx', 'ShellExecute', 'IsDebuggerPresent', 'WSASocket', 'VirtualProtect', 'bind', 'WinExec', 'GetForeGroundWindow', 'CreateProcessA', 'LoadLibraryA', 'socket', 'LoadResource', 'CreateFileA', 'VirtualAllocEx', 'HTTPSendRequest', 'BroadcastSystemMessage', 'FindWindowsA', 'Process32First', 'CreateRemoteThread', 'GetWindowsThreadProcessId', 'URLDownloadToFile', 'SetWindowsHookEx', 'GetMessage', 'VirtualAlloc', 'MoveFileA', 'FindResourceA', 'GetWindowsDirectoryA', 'PeekMessageA', 'FindClose', 'MapVirtualKeyA',
            'SetEnvironmentVariableA', 'GetKeyboardState', 'mciSendStringA', 'GetFileType', 'RasEnumConnectionsA', 'FlushFileBuffers', 'GetVersionExA', 'ioctlsocket', 'WSAAsyncSelect', 'GetCurrentThreadId', 'LookupPrivilegeValueA', 'GetCurrentProcess', 'SetStdHandle', 'WSACleanup', 'WSAStartup', 'CreateMutexA', 'GetForegroundWindow', 'SetKeyboardState', 'OleInitialize', 'SetUnhandledExceptionFilter', 'UnhookWindowsHookEx', 'GetModuleHandleA', 'GetSystemDirectoryA', 'RegOpenKey', 'GetFileAttributesA', 'AdjustTokenPrivileges', 'FreeLibrary', 'GetStartupInfoA', 'RasGetConnectStatusA', 'OpenProcessToken', 'PostMessageA', 'GetTickCount', 'GetExitCodeProcess', 'SetFileTime', 'DispatchMessageA', 'RegDeleteValueA', 'FreeEnvironmentStringsA', 'CallNextHookEx', 'GetUserNameA', 'HeapCreate', 'GlobalMemoryStatus', 'SetFileAttributesA', 'URLDownloadToFileA', 'RaiseException', 'WSAGetLastError', 'RegCreateKeyExA', 'keybd_event', 'ExitWindowsEx', 'GetCommandLineA', 'RegCreateKeyA', 'FreeEnvironmentStringsW', 'UnhandledExceptionFilter', 'GetExitCodeThread', 'PeekNamedPipe']
features = list(map(str.lower, features))

# Load pickle
standart_scaler_dynamic = None
with open(f'/home/ardaortlek/Desktop/Sandbox_Scripts/standart_scaler_dynamic_1.0.0.pickle', 'rb') as f:  # TODO
    standart_scaler_dynamic = pickle.load(f)

# Load dynamic model
xgb_clf = xgboost.XGBClassifier(objective="multiclass:softmax", num_class=4)
xgb_clf.load_model(
    "/home/ardaortlek/Desktop/Sandbox_Scripts/dynamic_model_1.0.0.json")  # TODO


# TODO: check who sends the request

@app.post("/")
async def request(id_by_client: int, request: Request, file: UploadFile = File(..., max_upload_size=10*1024*1024)):
    
    # Check request constraints
    log("Dynamic analysis request received.")
    
    if request.headers.get("api_key") != API_KEY:
        log("Valid api key is not provided, responded with an error.")
        raise HTTPException(status_code=403, detail="Invalid API Key")

    _, ext = os.path.splitext(file.filename)
    if ext.lower() != ".exe":
            log("Recieved file is not .exe, responded with an error.")
        raise HTTPException(status_code=400, detail="File type: " +
                            ext + " is not accepted. Accepted filetypes are: .exe")

    # Save the request & Start the analysis
    json_data = json.dumps({
        "label": "pending",
        "time": -1,
        "valid": True
    })
    binary_data = bytes(json_data, 'utf-8')
    conn.execute('INSERT INTO request (id_by_client, result) VALUES (?, ?)',
                 (id_by_client, binary_data))   # DB engine sanitizes parameters
    conn.commit()
    log("Request validated and saved.")

    file_bin = await file.read()
    r = requests.post(REST_URL_SUBMIT, headers=HEADERS,
                      files={"file": ("gev", file_bin)})
    task_id = r.json()["task_id"]
    tasks[str(id_by_client)] = str(task_id)

    log("Started the analysis task.")
    asyncio.create_task(save_result(id_by_client))

    return {"status": "OK"}


@app.get("/{id}")
async def get_result(id: int):
    log("Get result request received.")
    cursor = conn.execute(
        'SELECT result FROM request WHERE id_by_client = ?', (id,))
    result = cursor.fetchone()

    if result is None:
        log("Request id did not match any existing id.")
        raise HTTPException(status_code=404, detail="Item not found")

    json_data = result[0].decode('utf-8')
    result = json.loads(json_data)
    log("Returning the result: " + str(result))

    return result


async def save_result(id_by_client):
    prev_time = time.time()
    log("Waiting for the file running on Cuckoo.")

    while True:
        try:
            r = requests.get(
                REST_URL_GET + str(tasks[str(id_by_client)]), headers=HEADERS)
            report = r.json()
            if r.status_code == 200:
                break
        except:
            pass
        time.sleep(2.5)
    log("Cuckoo server responded.")

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

    x = standart_scaler_dynamic.transform(x)

    pred = xgb_clf.predict(x)[0]

    # Labels
    labels = ['benign', 'trojan', 'virus', 'worm']

    elapsed = time.time() - prev_time
    json_data = json.dumps({
		"label": labels[pred],
		"time": elapsed,
		"valid": True
	})
    binary_data = bytes(json_data, 'utf-8')

    log("File classified as: " + labels[pred])

    conn.execute('UPDATE request SET result=? WHERE id_by_client=?',
                 (binary_data, id_by_client))
    conn.commit()
