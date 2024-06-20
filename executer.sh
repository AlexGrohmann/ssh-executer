#!/bin/bash

# Variables
USER="kali"
HOST="192.168.178.98"
COMMAND="cd ~/Documents/Test && npm install"

# Open SSH connection and execute command, capture output
OUTPUT=$(ssh "${USER}@${HOST}" "${COMMAND}")

# Check if the command was successful and respond based on the output
if [[ "${OUTPUT}" == *"up to date"* ]]; then
    echo "Output contains up to date"
    echo "execute next command"
    echo $(ssh "${USER}@${HOST}" "${COMMAND}")
else
    echo "if statement was false"
    
fi


sleep 5