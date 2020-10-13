#!/bin/bash
#echo "$(lscpu | grep "CPU MHz" | awk '{printf("%.4f\n"), $3}')"
top -bn1 | grep "%Cpu(s)" | awk '{ printf("%f\n", $2 + $4 + $6) }'
