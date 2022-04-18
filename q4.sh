#!/bin/bash

echo Press Ctrl+D to stop inputting

arr=()
while read num; do
    arr=("${arr[@]}" $num)
done

echo ${arr[*]}

n=${#arr[@]}

for (( i=0; i<n; i++ )); do
    for (( j=0; j<i; j++ )); do
        if (( arr[i] < arr[j] )); then
            tmp=${arr[i]}
            arr[i]=${arr[j]}
            arr[j]=$tmp
        fi
    done
done

echo ${arr[*]}
