#!/bin/bash
set -ex

mkdir build
cd build

cmake .. \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release \
  -DSPDLOG_FMT_EXTERNAL=ON

make -j$(sysctl -n hw.logicalcpu)
make install