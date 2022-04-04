#!/bin/bash 

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
echo "value of compute3 is:"$z

#compute4
p=$(($a%$b+$c))
echo "value of compute4 is:"$p

#store result
declare -a Result
Result[0]=$x
Result[1]=$y
Result[2]=$z
Result[3]=$p
echo "The Results of every Computation in Dictionary :" ${Result[@]}

declare -a  arr_Result
for (( i=0; i<4;i++ ))
do
arr_Result[$i]=${Result[$i]}
done
echo "value into array" ${arr_Result[@]}


for ((i=1; i<=$((${#arr_Result[@]} - 1)); i++))
do
	for ((j=$((i + 1)); j<=${#arr_Result[@]} ; j++))
	do
		if [[ ${arr_Result[$i]} -lt ${arr_Result[$j]} ]]
      		then
               		tmp=${arr_Result[$i]}
               		arr_Result[$i]=${arr_Result[$j]}
               		arr_Result[$j]=$tmp
       		fi
      	done
done

echo "The Result of every Computation in Descending Order : ${arr_Result[@]}"

n=${#arr_Result[@]}
for ((i=n-1; i>=0; i-- ))
do
echo "The Result of every Computation in Ascending order :${arr_Result[i]}"
done
