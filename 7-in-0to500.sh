#!/bin/bash

for num in $(seq 0 7 500)
do
    echo ${num}
done

# for num in $(seq 0 500)
# do
#     if [ $((num%7)) -eq 0 ]; then
#         echo ${num}
#     fi
# done
