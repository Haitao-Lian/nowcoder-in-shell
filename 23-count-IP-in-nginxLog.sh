#!/bin/bash

grep '23/Apr/2020' nowcoder.txt | awk '{print $1}' | sort | uniq -c | sort -r | sed 's/^ *//'
