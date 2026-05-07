#!/usr/bin/env bash
set -euo pipefail

echo "Compiling des.cpp ..."
g++ -std=c++17 -Wall -Wextra -pedantic des.cpp -o des

echo "Build successful!"
echo "Running program..."
echo "-------------------------"

./des
