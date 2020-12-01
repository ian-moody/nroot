#!/bin/bash

cd "$(dirname "$0")"
cd ../sources/musl-cross-make-0.9.9
mv config.mak.dist config.mak
echo 'TARGET = x86_64-linux-musl' >> config.mak
make -j$(nproc)
