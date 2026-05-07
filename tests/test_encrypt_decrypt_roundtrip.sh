#!/usr/bin/env bash
set -euo pipefail

g++ -std=c++17 -Wall -Wextra -pedantic des.cpp -o des

plaintext="1010101010101010101010101010101010101010101010101010101010101010"
key="1111000011110000111100001111000011110000111100001111000011110000"

cipher=$(printf "1\n$plaintext\n$key\n" | ./des | tail -n 1)

decrypted=$(printf "2\n$cipher\n$key\n" | ./des | tail -n 1)

echo "Plaintext : $plaintext"
echo "Ciphertext: $cipher"
echo "Decrypted : $decrypted"

if [[ "$plaintext" != "$decrypted" ]]; then
    echo "Round-trip test failed"
    exit 1
fi

echo "Round-trip test passed"
