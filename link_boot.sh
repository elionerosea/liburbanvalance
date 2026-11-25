#!/usr/bin/env bash
set -e
TAG="crimson-forest-gentle-ember"
LIB="chilly-signal.a"
URL="https://github.com/elionerosea/liburbanvalance/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 -O "$LIB" "$URL"
g++ -O2 -pthread -std=c++17 main.cpp "$LIB" -o app && ./app
