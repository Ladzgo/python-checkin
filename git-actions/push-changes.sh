#!/bin/bash
cd "$(dirname "$0")/.."

echo "Pridavam zmeny do gitu..."

git add zmeny.txt

git commit -m "Automaticka zmena: $(date)"

git push origin script

echo "Zmeny odoslane na GitHub"

