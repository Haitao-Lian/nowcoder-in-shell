#!/bin/bash

awk -F"[0-9]" '{if(NF==2)print $0}' nowcoder.txt

# awk -F "" -v count=0 '/[0-9]/{
#     for (i=1; i<=NF; i++){
#         if ($i >= 0 && $i <= 9){
#             count++
#         }
#     }
#     if (count == 1) print $0
#     count = 0
# }' nowcoder.txt
