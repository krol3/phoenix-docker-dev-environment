# Setting up a Phoenix Docker development environment

## Running the dockerfile
```
docker build -t phoenix/dev:latest  .
docker run --rm -it phoenix/dev:latest /bin/sh
```

## Running the docker-compose
```
docker-compose build
docker-compose up
```

Exposed in http://127.0.0.1:4000/