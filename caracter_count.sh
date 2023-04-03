#!/bin/bash

num=1

while read line
do 
character=`echo "$line" | wc -c`
echo "$num    $character"
num=`expr $num + 1`
done < $1
