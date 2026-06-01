#!/bin/bash

# 现在需要你统计VSZ，RSS各自的总和（以M兆为统计），输出格式如下
# MEM TOTAL
# VSZ_SUM:3250.8M,RSS_SUM:179.777M 

awk '/[0-9]+/{
    sum1 += $5
    sum2 += $6
}END{
    print "MEM TOTAL"
    # printf "VSZ_SUM:%fM,RSS_SUM:%fM\n", sum1/1024, sum2/1024
    print "VSZ_SUM:" sum1/1024 "M,RSS_SUM:" sum2/1024 "M"
}' nowcoder.txt
