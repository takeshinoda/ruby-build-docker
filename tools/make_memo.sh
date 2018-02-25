#!/bin/bash

set -eux

autoconf
./configure optflags="-O0" debugflags="-g3" --prefix=/ruby/build
make
make install

