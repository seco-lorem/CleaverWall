
import asyncio
import requests

FILE_PATH = 'C:\\SQL2019\\RulesEng\\SETUP.EXE'
#FILE_PATH = 'C:\\Users\\Acer\\Desktop\\CS 491-2\\CleaverWall\\server-side\\DenemeScriptleri\\hybrid_analysis_apicall.py'

# try this, if ubuntu server down, raise http 500, detail: ubuntu server down
r = requests.post("http://localhost/?id_by_client=6",
    files={'file': open(FILE_PATH, 'rb')})

if r.status_code != 200:
    pass    # raise http 500, detail: ubuntu server ok demedi )

# Works as expected

print(r.text)


'''
r = requests.get("http://localhost/6")
if r.status_code != 200:
    pass
print(r.json())
print(r.json()["label"])


asyncio.sleep(10)


r = requests.get("http://localhost/6")
if r.status_code != 200:
    pass
print(r.json())
print(r.json()["label"])
'''