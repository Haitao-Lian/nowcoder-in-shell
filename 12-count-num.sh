#!/bin/bash

awk -F "" -v sum=0 '{
    count = 0
    for(i=1; i<=NF; i++){
        if ($i ~ /[1-5]/) count++
    }
    print "line" NR " number: " count
    sum+=count
}
END{
    print "sum is " sum
}' nowcoder.txt


# arr=($(grep "[1-5]" -no nowcoder.txt | awk -F: '{print $1}'| uniq -c | awk '{print $1}'))
# 
# awk -v arr="${arr[*]}" '
# {
#     print "line"NR"number:"arr[NR]
# }' nowcoder.txt
