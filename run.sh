#!/bin/bash
if [ $MATRIX_GENERATE = "false" ]; then
  echo "RUNNING INSTANCE"  
  python2.7 -m synapse.app.homeserver --config-path /var/matrix/conf/homeserver.yaml
else
  echo "GENERATTING CONFIG TO /var/matrix/conf"
  python2.7 -m synapse.app.homeserver \
    --generate-config \
    --report-stats $MATRIX_SEND_STATS \
    --generate-keys \
    -H $MATRIX_SERVER_NAME \
    --config-path /var/matrix/conf/homeserver.yaml
fi