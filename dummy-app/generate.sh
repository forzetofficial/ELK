#!/bin/bash

while true; do
  TIMESTAMP=$(date -Iseconds)
  RANDOM_NUM=$((RANDOM % 100))
  STATUS=$((RANDOM % 5))
  
  if [ $STATUS -eq 0 ]; then
    LEVEL="ERROR"
    MESSAGE="Critical error occurred with code $RANDOM_NUM"
  elif [ $STATUS -eq 1 ]; then
    LEVEL="WARN"
    MESSAGE="Warning: high memory usage $RANDOM_NUM%"
  else
    LEVEL="INFO"
    MESSAGE="Processing completed with result $RANDOM_NUM"
  fi
  
  echo "{\"time\":\"$TIMESTAMP\",\"level\":\"$LEVEL\",\"message\":\"$MESSAGE\",\"value\":$RANDOM_NUM}"
  sleep 2
done