#!/bin/bash

awk '{if ($0=="") print NR}' nowcoder.txt
