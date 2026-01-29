#!/bin/bash
cd "$(dirname "$0")/.."

echo "Git fetch..."
git fetch origin

echo "Git pull..."
git pull origin script

# Alternativa s rebase (zakomentovaná)
# git rebase origin/script

echo "Repo aktualizovane"

