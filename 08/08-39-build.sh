#! /bin/bash
here=`pwd`
cd /sources
tar xf gperf-3.3.tar.gz
cd gperf-3.3

time {
    ./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.3

    make && make check
}

cd $here
