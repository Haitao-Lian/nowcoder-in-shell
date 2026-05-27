#!/bin/bash

awk -F: '
BEGIN{ORS=""}
{
for(i=NF; i>=1; i--){
        if(i == 1){
            print $i "\n"
        }else {
            print $i ":"
        }
}
}' nowcoder.txt
