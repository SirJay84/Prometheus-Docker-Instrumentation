#!/bin/bash

while :
  do
  curl http://161.35.150.185:5001/
  sleep $((RANDOM % 10))
done