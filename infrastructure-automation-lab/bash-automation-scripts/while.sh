#!/bin/bash

COUNT=1

while [ $COUNT -le 3 ]
do
  echo "Deployment attempt $COUNT"
  COUNT=$((COUNT+1))
  sleep 1
done

echo "Deployment simulation done 🚀"

