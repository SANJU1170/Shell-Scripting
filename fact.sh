#!/bin/bash

num=$@
fact=1
for i in $num
do
if [ $i -gt 0 ];then
fact=`expr $i * $fact`
num=`expr $i - 1`
fi
done
echo "fact of $i is $fact"
