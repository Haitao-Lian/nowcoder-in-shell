#!/bin/bash

# cat nowcoder.txt | xargs -n 1 | sort | uniq -c | sort | awk '{print $2, $1}'

awk '{for (i=1; i<=NF; i++) s[$i]+=1}END{for (x in s) print x, s[x]}' nowcoder.txt | sort -k 2

# awk '{for(i=1;i<=NF;i++) a[$i]+=1}END{for(x in a) print x,a[x]}' nowcoder.txt | sort -k 2
