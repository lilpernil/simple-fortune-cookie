#!/bin/bash

response=$(curl -s localhost:9000/fortunes)

response=$(echo "$response" | tr -d '\r\n')

if [ $response == "[]" ]; then
    echo "Backend available"
else
    echo "Backend unavailable. Unexpected response: $response"
    exit 1
fi
