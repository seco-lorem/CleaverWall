import os
from fastapi import FastAPI, HTTPException, UploadFile, File
import sqlite3
import asyncio
import json


app = FastAPI()
conn = sqlite3.connect('requestdb.db', check_same_thread=False)
conn.execute('CREATE TABLE IF NOT EXISTS request (id INTEGER PRIMARY KEY AUTOINCREMENT, id_by_client INTEGER, result BLOB)')

# TODO: check who sends the request

@app.post("/")
async def request(id_by_client: int, file: UploadFile = File(..., max_upload_size=10*1024*1024)):
    
    _, ext = os.path.splitext(file.filename)
    if ext.lower() != ".exe":
        raise HTTPException(status_code=400, detail="File type: "+ ext + " is not accepted. Accepted filetypes are: .exe")

    json_data = json.dumps({
		"label": "pending",
		"time": -1,
		"valid": True
	})
    binary_data = bytes(json_data, 'utf-8')
    # TODO: Make this line safe
    conn.execute('INSERT INTO request (id_by_client, result) VALUES (?, ?)', (id_by_client, binary_data))
    conn.commit()

    print("expensive task:")
    asyncio.create_task(do_expensive_task(id_by_client, file))

    return {"status": "OK"}


@app.get("/{id}")
async def get_result(id: int):
    cursor = conn.execute('SELECT result FROM request WHERE id_by_client = ?', (id,))
    result = cursor.fetchone()

    if result is None:
        raise HTTPException(status_code=404, detail="Item not found")

    print(result[0])
    json_data = result[0].decode('utf-8')
    result = json.loads(json_data)
    print(result)


    return result


async def do_expensive_task(id_by_client, file):
    await asyncio.sleep(5)  #TODO
    json_data = json.dumps({
		"label": "benign",
		"time": 4.128585338592529,
		"valid": True
	})
    binary_data = bytes(json_data, 'utf-8')
    conn.execute('UPDATE request SET result=? WHERE id_by_client=?', (binary_data, id_by_client))
    conn.commit()
    print("expensive task completed")
