#!/bin/bash -x

read -p "Enter 3 inputs: " a b c
echo "Three inputs are:a=$a b=$b c=$c"

#compute1
x=$(($a+$b*$c))
echo "value of compute1 is:"$x

#compute2
y=$(($a*$b+$c))
echo "value of compute2 is:"$y

#compute3
z=$(($c+$a/$b))
echo "value of compute2 is:"$z


