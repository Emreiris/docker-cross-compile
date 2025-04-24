#!/bin/sh

set -ex

if [ ! -d /${TARGET_CPP}/build ]; then
    mkdir /${TARGET_CPP}/build
fi

cd /${TARGET_CPP}/build

cmake /${TARGET_CPP}
cmake --build . -j $(nproc)
