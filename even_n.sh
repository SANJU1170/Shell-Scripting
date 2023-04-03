#!/bin/bash

for i in $*
do
status=`expr $i % 2`
if [ $status -eq 0 ]
then
echo " $i is even"
else
echo " $i is odd"
fi
done
