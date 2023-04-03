#!/bin/bash


num=$@

for i in $num
do
if (($i % 2 == 0))
then
  echo "$i is even."
else
  echo "$i is odd."
fi
done
