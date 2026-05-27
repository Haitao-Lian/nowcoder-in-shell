#!/bin/bash

awk '{if ($0 != "") print $0}' nowcoder.txt
