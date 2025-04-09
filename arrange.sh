#!/bin/bash

for file in files/*; do
  filename=$(basename "$file")
  first_char=${filename:0:1}
  lower_char=$(echo "$first_char" | tr '[:upper:]' '[:lower:]')

  if [[ $lower_char =~ [a-z] ]]; then
    mv "$file" "$lower_char"/
  fi
done
