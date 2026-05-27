#!/bin/bash

while read string
do
    printf "%'u\n" $string
done < nowcoder.txt

# awk 'BEGIN{FS=""}{for(i=1;i<=NF;i++) {if((NF-i)%3==0&&i!=NF) printf $i",";else printf $i};printf "\n"}' nowcoder.txt

# awk -F "" '{
#     for (i=1; i<=NF; i++){
#         if((NF-i) % 3 == 0 && i != NF){
#             printf $i ","
#         }else {
#             printf $i
#         }
#     }
#     printf "\n"
# }' nowcoder.txt
