#!/usr/bin/env bash

# Get input value
input=$(cat input.txt)

result=0

# Loop over the lines in the input
while read -r line; do
  first_number=$(echo "$line" | grep -oE '[0-9]' | head -n 1)
  last_number=$(echo "$line" | rev | grep -oE '[0-9]' | head -n 1)
  sum="$first_number$last_number"
  result=$(($result + $sum))
done <<< "$input"

echo "$result"
