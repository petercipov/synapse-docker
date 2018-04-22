# synapse-docker
Docker package for synapse, pure, no other additions like turn server. Main purpose is to provide minimalistic configuration. and using later docker-compose to orchestrate infrastructure

## Generate configuration
```
docker run -it --rm \
    -v /config/folder:/var/matrix/conf \
    -e MATRIX_GENERATE=true \
    -e MATRIX_SERVER_NAME=example.com 
    petercipov/synapse-docker
```

## Run image
For running you need to have prepared homeserver.yaml configuration and provide configuration folder where this file is located. i.e, /var/matrix/conf/homeserver.yaml 
```
docker run \
  -v /config/folder:/var/matrix/conf \
  petercipov/synapse-docker
```