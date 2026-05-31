#!/bin/bash

grep 'tcp' nowcoder.txt | awk '{
    print $5
}' | awk -F: '{print $1}' | sort | uniq -c | sort -k1 -nr | awk '{print $2,$1}'
