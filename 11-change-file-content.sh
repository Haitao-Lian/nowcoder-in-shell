#!/bin/bash

# awk '{print $1}' nowcoder.txt | xargs -n 4
# awk '{print $2}' nowcoder.txt | xargs -n 4

# WRONG!
# row=$(awk '{print NR}' nowcoder.txt)
# col=$(awk '{print NF}' nowcoder.txt)

# col=$(head -n1 nowcoder.txt | awk '{print NF}')
# 
# for ((i=1;i<=col;i++))
# do
#     awk -v awk_i="$i" '{print $awk_i}' nowcoder.txt | xargs echo
# done

awk '{
    for (i=1; i<=NF; i++){
        arr[i][NR] = $i
    }
}
END{
    for (i=1;i<=NF; i++){
        for(j=1;j<=NR; j++){
            printf "%s ", arr[i][j]
        }
    print ""
    }
}' nowcoder.txt


