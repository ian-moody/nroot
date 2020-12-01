#!/bin/bash

cd "$(dirname "$0")"
mkdir -p ../built
cd ../sources/toybox-0.8.4

make clean
make defconfig

# Build static toybox with musl-cross-make gcc toolchain
LDFLAGS="--static" CROSS_COMPILE=../x86_64-linux-musl-cross/bin/x86_64-linux-musl- make toybox
mv toybox ../../built/
exit

# Build static with clang using musl-cross-make as sysroot
CFLAGS="\
	-target x86_64-pc-linux-musl \
	--sysroot ../x86_64-linux-musl-cross" \
LDFLAGS="\
	-static" \
CC=clang make toybox
