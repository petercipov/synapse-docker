# synapse-docker
docker for synapse, pure, no other additions

## Generate configuration
```
docker run -it --rm -v /config/folder:/var/matrix/conf -e MATRIX_GENERATE=true -e MATRIX_SERVER_NAME=example.com petercipov/synapse
```

## Run image
docker run -v /config/folder:/var/matrix/conf petercipov/synapse