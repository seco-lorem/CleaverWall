# Run:
# pip install -r "requirements.txt"
# to install requirements via pip
import json
import time
import requests


SUBMIT_API_URL = 'https://www.hybrid-analysis.com/api/v2/submit/file'
REPORT_API_URL = 'https://www.hybrid-analysis.com/api/v2/report/'
FILE_PATH = 'C:\\SQL2019\\RulesEng\\SETUP.EXE'
ENVIRONMENT_ID = 160    # 160 for Windows10 64bit:      https://www.hybrid-analysis.com/docs/api/v2#/Sandbox%20Submission/post_submit_file:~:text=SETUP.EXE-,environment_id%C2%A0,-*
# If FileNotFoundError, consider double checking from which directory you run the script
f = open('./../../keys.json')
key = json.load(f)["hybrid_analysis"]["api_key"]
f.close()

# Submit the file
r = requests.post(SUBMIT_API_URL,
    headers={'api-key': key, "user-agent": "Falcon"},
    files={'file': open(FILE_PATH, 'rb')},
    data={"environment_id": 160})
print(r.text)

# Check if done once in a while
n = 1
r = requests.get(REPORT_API_URL + r.json()["job_id"] + "/summary",
    headers={'api-key': key, "user-agent": "Falcon"})
while r.json()["state"] == "IN_PROGRESS":
    time.sleep(n)
    r = requests.get(REPORT_API_URL + r.json()["job_id"] + "/summary",
        headers={'api-key': key, "user-agent": "Falcon"})
    
    print(r.json()["state"])
    if n < 32:   # Bounded Exp. Back-off
        n *= 2

print(r.text)
