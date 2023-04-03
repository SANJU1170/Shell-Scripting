#!/bin/bash

num=1
while read line
do
echo "$num) $line"
num=`expr $num + 1`
done < $1
