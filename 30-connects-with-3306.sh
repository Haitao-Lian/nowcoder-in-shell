#!/bin/bash

grep '3306' nowcoder.txt | grep 'ESTABLISHED' | awk '{print $5}' | awk -F: '{print $1}' | sort | uniq -c | sort -k1,1 -nsr | sed 's/^ *//'
