#!/bin/bash

awk '/tcp/{
    if(NR!=1){
        count[$6]++
    }
}
END{
    for (s in count){
        print s, count[s]
    }
}' nowcoder.txt | sort -k 2 -nr
