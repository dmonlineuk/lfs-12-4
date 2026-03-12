#! /bin/bash
here=`pwd`
cd /sources
tar xf libtool-2.5.4.tar.xz
cd libtool-2.5.4

time {
    ./configure --prefix=/usr

    make && make check
}

cd $here
