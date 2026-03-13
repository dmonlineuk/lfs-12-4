#! /bin/bash
here=`pwd`
cd /sources
tar xf autoconf-2.72.tar.xz
cd autoconf-2.72

./configure --prefix=/usr

time {
    make && make check
}

cd $here
