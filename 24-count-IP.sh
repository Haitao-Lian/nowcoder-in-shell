#!/bin/bash

grep -E '23/Apr/2020:2[0-3]' nowcoder.txt | awk '{print $1}' | sort | uniq -c | wc -l
