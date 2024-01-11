#!/bin/bash

# Check if the input file is provided as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 input_file.txt"
  exit 1
fi

input_file=$1
output_file="amass_domains.txt"

# Use grep to extract domains and subdomains
grep -oE "[a-zA-Z0-9.-]+\.([a-zA-Z]{2,})" "$input_file" | sort -u > "$output_file"

echo "Domains and subdomains extracted and saved to $output_file."
