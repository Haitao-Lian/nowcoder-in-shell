#!/bin/bash

awk -F "." '{
    if ($0 ~ /^([0-9]+\.){3}[0-9]+/){
        flag = "yes"
        for (i=1; i<=NF; i++){
            if($i > 255) flag = "no"
        }
        print flag
    }else print "error"
}' nowcoder.txt
