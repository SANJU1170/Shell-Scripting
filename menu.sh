#!/bin/bash

echo "below is the menu"
echo "========================="
echo -e " 1.search words \n 2.Check name \n 3.find \n 4.Create link \n 5.Edit file \n 6.Exit \n"
echo "select option from above menu"
read opt
case $opt in
	1)echo "enter the word to search in a file"
	read word
	grep -R -l "$word" * > log_word
	if [ $? -eq 0 ];then
	echo "$word is found in below file"
	cat log_word
	rm log_word
	else
	echo "$word is not found"
	fi

             ;;
	
	2)echo "enter name to check"
	read name
	if [ -f $name ];then
	echo "$name is file"
	elif [ -d $name ];then
	echo "$name is directory"
	elif [ -L $name ];then
	echo "$name is link"
	else
	echo "$name is not exist"
	fi

             ;;

	3)echo "enter file name to find path"
	read file
	find . -iname "$file" > path_file
	if [ $? -eq 0 ];then
	echo "$file is found in below location"
	cat path_file
	rm path_file
	else
	echo "$file not exist"
	fi
	    ;;
	4)echo "enter file name to create link"
	read file
	if [ ! -f $file ];then
	echo "$file not exist"
	exit 1
	fi
	echo "enter the link name"
	read link
	if [ -L $link ];then
	echo "link alread exist"
	exit 1
	fi
	ln -s $file $link
	    ;;
	5)echo "enter file name to edit"
	read file
	if [ -f $file ];then
	vi $file
	else
	echo "$file doesn't exist"
	fi
	    ;;
	*)echo "you selected exit from the script"
	exit 0
	     ;;

esac
