#!/usr/bin/env bash
set -euo pipefail

g++ -std=c++17 -Wall -Wextra -pedantic des.cpp -o des

output=$(printf "1\n1010101010101010101010101010101010101010101010101010101010101010\n1111000011110000111100001111000011110000111100001111000011110000\n" | ./des)

echo "$output"

if [[ -z "$output" ]]; then
    echo "DES sample test failed"
    exit 1
fi

echo "DES sample test passed"
