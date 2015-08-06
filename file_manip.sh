#! /bin/bash

# Checks if a file exists or not
# Usage: ./exists.sh {pathnametofile}

	echo "Please enter the pathname you would like to work with: "
	read pathname

	echo "-----------------------------"
	echo "|           Menu            |"
	echo "-----------------------------"
	echo "0. Check if the file exists"
	echo "1. Delete the file"
	echo "2. Display the contents of the file"
	echo "3. Display the first n lines of the file"
	echo "4. Display the last n lines of the file"
	echo "4. Add content to the end of the file"
	echo "5. Search for a pattern within the file"
	echo "6. Exit the script"
	

read input

if [ ${input} -eq 0 ];
then	
	if [ ! -z pathname ];
	then
		echo "The file exists."
	else
		echo "The file does not exist."
	fi
	
fi

if [ ${input} -eq 1 ];
then 
	echo "Are you sure? Type 1 to delete the file."
	read delete
	if [ ${delete} -eq 1 ];
	then
		rm ${pathname}
		echo "File deleted."
	fi
fi

if [ ${input} -eq 2 ];
then 
	echo "Displaying the contents of the file"
	cat ${pathname}
fi

if [ ${input} -eq 3 ];
then
	echo "How many lines would you like to see?"
	read lines
	head -n ${lines} ${pathname}
fi

if [ ${input} -eq 4 ];
then
	echo "How many lines would you like to see?"
	read lines
	tail -n ${lines} ${pathname}
fi

if [ ${input} -eq 5 ];
then
	echo "Type below what you would like to add to the end of the file."
	read add
	echo ${add} >> ${pathname}
fi

