#!/bin/bash

read -r line

for ((i=1; i<=$line; i++));
do
    for ((j=1; j<=($line-i); j++));
    do
        printf " "
    done

    for ((k=1; k<=i; k++));
    do
        printf "* "
    done
    printf "\n"
done
