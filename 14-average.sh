#!/bin/bash

awk -v sum=0,len=0 '{
    if(NR==1) {
        len=$1
    }else {
        sum+=$1
    }
}
END{
    printf "%.3f\n", sum/len
}' nowcoder.txt
