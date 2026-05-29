#!/bin/bash

awk '{print $1}' nowcoder.txt | sort -r | uniq -c | awk '{
    if ($1>3) print $0
}' | sed 's/^ *//'
