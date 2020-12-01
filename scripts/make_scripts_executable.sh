#!/bin/bash

cd "$(dirname "$0")"
find . -type f -name "*.*" -exec chmod 777 {} \;
