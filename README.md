# Playlist API

## Docker
```
  playlist:/$ sudo docker build -t playlist:1.0 -f Dockerfile .
  playlist:/$ sudo docker run -d -p 8000:8000 playlist:1.0
```

## Usage
```
    # GET
    curl -X GET http://127.0.0.1:8000/musics/ -H 'Acceppt: application/json'

    # POST
    curl -X POST http://127.0.0.1:8000/musics/ -H 'content-type: application/json' -d '{"title": "olhos certos", "seconds": 230}'
```

