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

# Password length
PASS_LENGTH=12

# Generating a random password
PASSWORD=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c $PASS_LENGTH)

# Setting a password for a user
echo -e "$PASSWORD\n$PASSWORD" | sudo passwd $USERNAME

# Message display
echo "Password $PASSWORD has been created for user $USERNAME"