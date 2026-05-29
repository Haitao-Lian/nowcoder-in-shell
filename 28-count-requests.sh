#!/bin/bash

# grep -Eo '2020:[0-9]{2}:[0-9]{2}' nowcoder.txt | awk -F: '{print $2 ":" $3}' | sort | uniq -c | sort -r | sed 's/^ *//'

awk '{print substr($4,14,5)}' nowcoder.txt | sort | uniq -c | sort -r | sed 's/^ *//'
