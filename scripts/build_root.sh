#!/bin/bash

cd "$(dirname "$0")"
mkdir -p ../built
cd ../sources
PATH=$(realpath .)/x86_64-linux-musl-cross/bin:$PATH
cd toybox-0.8.4
echo $PATH
make root CROSS_COMPILE=x86_64-linux-musl- LINUX=../linux-5.9.11
rm -r ../../built/root
mv root ../../built/
