#! /bin/bash
here=`pwd`
cd /sources
tar xf bison-3.8.2.tar.xz
cd bison-3.8.2

time {
    ./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2

    make && make check
}

cd $here
