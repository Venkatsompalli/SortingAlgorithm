#!/bin/bash -x

read -p "Enter the first number" a
read -p "Enter the second number" b
read -p "Enter the third number" c

A=$((a+b*c));
B=$((a*b+c));
C=$((c+a/b));
D=$((a%b+c));

declare -A Dictionary

Dictionary[A]=$A
Dictionary[B]=$B
Dictionary[C]=$C
Dictionary[D]=$D


# Static input of Array
arr=${Dictionary[@]}
  
echo "Array in original order"
echo ${arr[*]}
  
# Performing Bubble sort 
for ((i = 0; i<4; i++))
do
      
    for((j = 0; j<4-i-1; j++))
    do
      
        if [ ${arr[j]} -lt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  
echo "Array in Descending order :"
echo ${arr[*]}
