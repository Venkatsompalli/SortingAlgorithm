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

Array=${Dictionary[@]}
echo $Array
