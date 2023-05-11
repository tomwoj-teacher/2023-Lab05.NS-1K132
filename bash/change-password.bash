#!/bin/bash
#Wojciech Kwiatkowski

read -p "Enter username: " username
read -s -p "Enter new password: " password

echo "$username:$password" | chpasswd

if [ $? -eq 0 ]; then
	echo "Password changed successfully for user $username."
else
	echo "Error changing password for user $username."
fi
