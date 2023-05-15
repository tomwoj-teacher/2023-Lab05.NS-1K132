#!/bin/bash
#Natalia Krzysztof

read -p "Enter the name of the new directory: " directory_name

if [ -d "$directory_name" ]; then
	echo "Directory $directory_name already exists."
else
	sudo mkdir "$directory_name"
	echo "Directory has been successfully created."
fi
