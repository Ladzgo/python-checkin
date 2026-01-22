#!/usr/bin/env bash
set -e  # Leáll, ha hiba van

# 1. Ellenőrizzük, hogy van-e telepítve Git
which git > /dev/null 2> /dev/null || {
    echo "Hiba: A git parancs nem található!"
    exit 1
}

# 2. Ideiglenes mappa létrehozása és belépés
tmpdir="$(mktemp -d tmp.XXXXXXX)"
echo "Ideiglenes mappa létrehozva: $tmpdir"
cd "$tmpdir"

# 3. Klónozás (SSH linkkel)
echo "Klónozás folyamatban..."
git clone 'git@github.com:Matejejko/python-checkin-pas.git' myrepodir

# 4. Belépés és tartalom listázása
cd myrepodir
echo "--- A mappa tartalma: ---"
ls -la
git branch -a

echo "-- Script vége --"
