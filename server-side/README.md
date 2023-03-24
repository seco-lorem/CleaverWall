# CleaverWall Server Side

Server Side Applications of CleaverWall. \
There are two servers: one main Django server, one fastAPI server that specificly runs on Ubuntu 20.04.

## Main Server
in ./cleaverwall/

### To start
```
pip install -r "requirements.txt"
python manage.py runserver
```

### Update & run migrations
```
python manage.py makemigrations
python manage.py migrate
```

## Ubuntu Server

in ./ubuntu-server/

### To start

First, on an Ubuntu 20.04 machine, set up and run Cuckoo Sandbox...\
Then
```
pip install -r "requirements.txt"
uvicorn main:app --reload
```
