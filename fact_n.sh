#!/bin/bash

for i in $* 
do
fact=1
num=$i
while [ $num -gt 1 ]
do
fact=`expr $num \* $fact`
num=`expr $num - 1`
done
echo "fact of $i is $fact"
done
