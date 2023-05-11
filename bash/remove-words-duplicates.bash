#!/bin/bash
#Natalia Krzysztof

remove_duplicate_words() {
	file=$1
	unique_words=$(awk -v RS="[ \n]+" '!n[$0]++' "$file" )
	echo "$unique_words" > "$file"
        echo "Duplicate words removed successfully!"
}

read -p "Enter the file name to remove words duplicates: " file
remove_duplicate_words "$file"
