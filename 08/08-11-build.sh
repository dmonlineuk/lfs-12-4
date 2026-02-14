#! /bin/bash
here=`pwd`
cd /sources
tar xf file-5.46.tar.gz
cd file-5.46

time {
    ./configure --prefix=/usr
    make
    make check
}

cd $here
