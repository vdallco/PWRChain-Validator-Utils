#!/bin/bash

IPADDR=""

if [ $# -eq 0 ]; then
  echo "Auto-IP mode"
  IPADDR=$(curl -s https://ipinfo.io/ip)
else
  echo "Custom IP mode"
  IPADDR=$1
fi

echo "Starting validator for $IPADDR"
echo "Logging to validator.log"
echo "nohup PID saved in nohupPID.log"
nohup java -jar validator.jar password $IPADDR > validator.log 2>&1 &
echo $! > nohupPID.log
