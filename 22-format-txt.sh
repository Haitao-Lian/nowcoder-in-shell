#!/bin/bash

sort -t: -k 1,1 -s nowcoder.txt | awk -F: '{
    if (!a[$1]++){
        printf("[%s]\n", $1)
    }
    print $2
}'
