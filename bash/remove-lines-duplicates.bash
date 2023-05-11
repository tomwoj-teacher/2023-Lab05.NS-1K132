#!/bin/bash
#Natalia Krzysztof

remove_duplicate_lines() {
	file=$1
	unique_lines=$(awk '!seen[$0]++' "$file")
	echo "$unique_lines" > "$file"
	echo "Duplicate lines removed successfully"
}

read -p "Enter the file name to remove duplicate lines: " file
remove_duplicate_lines "$file"
