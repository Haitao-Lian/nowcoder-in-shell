#!/bin/bash

grep ':3306' nowcoder.txt | awk '{
    a[$5]++;
    b[$6]++
}
END{
    printf "TOTAL_IP %d\n", length(a)
    printf "ESTABLISHED %d\n", b["ESTABLISHED"]
    printf "TOTAL_LINK %d\n", NR
}'
