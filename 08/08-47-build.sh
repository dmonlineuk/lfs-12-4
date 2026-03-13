#! /bin/bash
here=`pwd`
cd /sources
tar xf automake-1.18.1.tar.xz
cd automake-1.18.1

./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.18.1

time {
    make

    make -j$(($(nproc)>4?$(nproc):4)) check
}

cd $here
