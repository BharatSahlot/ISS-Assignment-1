#!/bin/bash

read str

echo -n "Reversed: "

echo $str | rev

echo -n "Reversed and incremented: "

echo $str | rev | tr "[a-y]z[A-Y]Z" "[b-z]a[B-Z]A"

echo -n "Half Reversed: "

echo -n ${str:0:${#str}/2} | rev
echo ${str:${#str}/2}
