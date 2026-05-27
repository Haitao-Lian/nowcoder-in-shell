#!/bin/bash

awk '{print $2}' nowcoder.txt | sort | uniq -c | sort | awk '{if($1>1) print $1,$2}'
