#!/bin/bash

curl -s http://localhost:8080 | grep -q "Fortune cookie"

if [ $? -eq 0 ]; then
    echo "Frontend available"
else
    echo "Frontend unavailable"
    exit 1
fi