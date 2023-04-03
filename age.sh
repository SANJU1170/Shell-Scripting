#!/bin/bash

sed '1d' $1 > temp


while read line
do
age=`echo "$line" | awk -F " " '{print $(NF)}'`
if [ $age -gt 25 ]
then
echo "$line"
fi
done < temp

