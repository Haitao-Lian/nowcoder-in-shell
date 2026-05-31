#!/bin/bash

grep ':3306' nowcoder.txt | awk '{
    a[$5]++;
    a[$6]++
}
END{
}'
