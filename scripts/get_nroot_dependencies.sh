#!/bin/bash

cd "$(dirname "$0")"
mkdir -p ../sources 
cd ../sources
sudo apt-get update
sudo apt-get -y install wget make xz-utils file gcc flex bison bc
if [[ ! -d x86_64-linux-musl-cross ]]; then wget https://musl.cc/x86_64-linux-musl-cross.tgz -O - | tar -xz; fi
if [[ ! -d toybox-0.8.4 ]]; then wget https://github.com/landley/toybox/archive/0.8.4.tar.gz -O - | tar -xz; fi
if [[ ! -d linux-5.9.11 ]]; then wget https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.9.11.tar.xz -O - | tar -xJ; fi
if [[ ! -d musl-cross-make-0.9.9 ]]; then wget https://github.com/richfelker/musl-cross-make/archive/v0.9.9.tar.gz -O - | tar -xz; fi
