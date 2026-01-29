#!/bin/bash
cd "$(dirname "$0")/.."

echo "Vytváram zmeny.txt..."

RANDOM_HASH=$(head -c 32 /dev/urandom | sha256sum | cut -d ' ' -f1)

echo "Datum: $(date)" > zmeny.txt
echo "Nahodny hash: $RANDOM_HASH" >> zmeny.txt

echo "Hotovo: zmeny.txt vytvoreny"

