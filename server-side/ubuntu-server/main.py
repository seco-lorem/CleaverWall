from fastapi import FastAPI
import sqlite3
import asyncio

app = FastAPI()
conn = sqlite3.connect('example.db', check_same_thread=False)
conn.execute('CREATE TABLE IF NOT EXISTS data (id INTEGER PRIMARY KEY AUTOINCREMENT, num INTEGER, data JSON)')


'''
@app.get("/")
async def get_num(num: int, data: dict):
    conn.execute('INSERT INTO data (num, data) VALUES (?, ?)', (num, data))
    conn.commit()

    asyncio.create_task(do_expensive_task())

    return {"status": "OK"}

@app.get("/{num}")
async def get_data(num: int):
    cursor = conn.execute('SELECT data FROM data WHERE num = ?', (num,))
    result = cursor.fetchone()

    if result is None:
        return {"status": "not found"}

    return result[0]

async def do_expensive_task():
    await asyncio.sleep(5)
    print("expensive task completed")

'''