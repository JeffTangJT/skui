#! /usr/bin/env bash

VERSION=${1}
OS=${2}

MAJOR=`echo ${VERSION} | cut -d. -f1`
MINOR=`echo ${VERSION} | cut -d. -f2`
REVISION=`echo ${VERSION} | cut -d. -f3`

wget https://github.com/Kitware/CMake/releases/download/v${MAJOR}.${MINOR}.${REVISION}/cmake-${VERSION}-${OS}-x86_64.tar.gz
tar -xf cmake-${VERSION}-${OS}-x86_64.tar.gz
export PATH=${PWD}/cmake-${VERSION}-${OS}-x86_64/bin:${PATH}
echo "Extracted CMake and set PATH=$PATH"
cmake --version
