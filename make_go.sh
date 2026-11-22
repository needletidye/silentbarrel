#!/usr/bin/env bash
set -e
LIB="oxide-complex.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/needletidye/silentbarrel/releases/download/calm-badger-hidden-cedar/oxide-complex.a"
g++ -O2 -std=c++17 -pthread -o app main.cpp "$LIB" && ./app
