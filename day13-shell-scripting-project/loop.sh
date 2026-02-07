#!/bin/bash

echo "Running server check simulation..."

for server in server1 server2 server3
do
  echo "Checking status of $server"
  sleep 1
done

echo "All servers checked ✅"

