#!/bin/bash

awk -v count=0 '{if (NR != 1) count+=$4}; END{print count}' nowcoder.txt
