#!/bin/bash

# TODO: consider only alphabets

file=$1

echo File size: $(wc -c < "$file") bytes
echo Total number of lines: $(wc -l < "$file")
echo Total number of words: $(wc -w < "$file")

i=0
while read -r line; do
    echo Line No: $i - Count of Words: $(echo "$line" | wc -w)
    let i=$i+1
done < "$file"

words=$(tr ' ' '\n' < $file | sort -u)

while read -r word; do
    if [[ -n "${word// /}" ]]; then
        if echo $word | grep -i -q "^[a-z]*$"; then
            count=$(cat $file | grep -o $word | wc -w)
            if (( $count > 1 )); then
                echo Word: $word - Count of repetition: $count
            fi
        fi
    fi
done <<< $words
