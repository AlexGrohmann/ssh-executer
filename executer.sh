#!/bin/bash

# Variables
USER="kali"
HOST="192.168.178.98"
COMMAND="cd ~/Documents/Test && npm install"

echo "mobile or desktop? (m/d):"
read device_type

DEVICE=""

# Save the input in a variable
if [[ "$device_type" == "m"  ]]; then
    DEVICE="mobile"
    
    elif [[ "$device_type" == "d"  ]]; then
    DEVICE="desktop"
else
    echo "Invalid input. Please run the script again and enter 'm' or 'd'."
fi

echo $DEVICE
sleep 5
exit 1

# DE git checkout . && js_dev && styles extracten etc
# Open SSH connection and execute command, capture output
OUTPUT=$(ssh "${USER}@${HOST}" "${COMMAND}")

# Check if the command was successful and respond based on the output
if [[ "${OUTPUT}" == *"up to date"* ]]; then
    echo "Output contains up to date"
else
    echo "there was an error"
    exit 1
    
fi

# committen
# Open SSH connection and execute command, capture output
COMMAND="cd ~/Documents/beauty-of-physics && git add . && git commit -m 'auto commit' && git push"
OUTPUT=$(ssh "${USER}@${HOST}" "${COMMAND}")

# Check if the command was successful and respond based on the output
# if [[ "${OUTPUT}" == *"up to date"* ]]; then
#     echo "Output contains up to date"
# else
#     echo "there was an error"
#     exit 1

# fi


sleep 5