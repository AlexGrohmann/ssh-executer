#!/bin/bash

# Variables
USER="user123"
HOST="192.168.1.100"
COMMAND="ls /home"

# Open SSH connection and execute command, capture output
OUTPUT=$(ssh "${USER}@${HOST}" "${COMMAND}")

# Check if the command was successful and respond based on the output
if [ $? -eq 0 ]; then
    echo "Command executed successfully. Output:"
    echo "${OUTPUT}"
    
    # Perform actions based on the output
    if [[ "${OUTPUT}" == *"user123"* ]]; then
        echo "The /home directory contains 'user123'. Performing specific action."
        # Add your specific action here
    else
        echo "The /home directory does not contain 'user123'."
    fi
else
    echo "Failed to execute command."
fi