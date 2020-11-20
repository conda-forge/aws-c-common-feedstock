#!/bin/bash

set -ex

mkdir build-static
cd build-static
cmake ${CMAKE_ARGS} -GNinja \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DCMAKE_BUILD_TYPE=Release \
  -DBUILD_SHARED_LIBS=OFF \
  ..
cd ..
ninja install
