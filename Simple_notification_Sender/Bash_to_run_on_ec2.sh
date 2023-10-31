#!/bin/bash
HOST="localhost"
PORTS="443 900 8080 9090"


for PORT in $PORTS; do
    nc -z -w 2 $HOST $PORT
    if [ $? -ne 0 ]; then
        echo "Port $PORT is down on $HOST"
	PAYLOAD='{"port": '$PORT'}'
	ENCODED_PAYLOAD=$(echo -n "$PAYLOAD" | base64)
	aws lambda invoke --function-name helloP --invocation-type Event --payload "$ENCODED_PAYLOAD" /dev/null
    fi
done
