#! /bin/bash
here=`pwd`
cd /sources
tar xf lz4-1.10.0.tar.gz
cd lz4-1.10.0

time {
    make BUILD_STATIC=no PREFIX=/usr
    make -j1 check
}

cd $here
