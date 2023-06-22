#!/bin/bash
#Krzysztof Mendroch

# Checks if a username is provided
if [ $# -eq 0 ]
then
    echo "No arguments were given. Pass the username as an argument"
    exit 1
fi

# The username from the argument
USERNAME=$1

# Deleting a user's password
sudo passwd -d $USERNAME

# Message display
echo "$USERNAME password has been removed"