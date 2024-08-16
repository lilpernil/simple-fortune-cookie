#!/bin/bash

response=$(echo -e "ping\r" | nc -q 1 localhost 6379)

response=$(echo "$response" | tr -d '\r\n')

if [ $response == "+PONG" ]; then
    echo "Redis available"
else
    echo "Redis unavailable. Unexpected response: $response"
    exit 1
fi
