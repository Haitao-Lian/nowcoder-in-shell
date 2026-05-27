#!/bin/bash

grep -Eo '//([^/]+)/' nowcoder.txt | grep -Eo '[^/]+' | sort | uniq -c | sort -r | sed 's/^ *//'
