#!/bin/bash
# simple-interest.sh -- simple interest calculator
# Usage: ./simple-interest.sh <principal> <rate> <time>

if [ $# -eq 3 ]; then
  P=$1; R=$2; T=$3
else
  read -p "Principal (P): " P
  read -p "Rate (% per annum): " R
  read -p "Time (years): " T
fi

# Use bc for decimal math
SI=$(echo "scale=2; $P * $R * $T / 100" | bc -l)
echo "Simple Interest = $SI"
