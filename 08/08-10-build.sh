#! /bin/bash
here=`pwd`
cd /sources
tar xf zstd-1.5.7.tar.gz
cd zstd-1.5.7

time {
    make PREFIX=/usr
    make check
}

cd $here
