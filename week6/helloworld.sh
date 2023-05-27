#!/bin/bash

trap 'echo "Interrupt received"; exit' SIGUSR1
while :
do
    echo "Hello World"
    sleep 10
done
