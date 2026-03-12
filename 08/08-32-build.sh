#! /bin/bash
here=`pwd`
cd /sources
tar xf psmisc-23.7.tar.xz
cd psmisc-23.7

time {
    ./configure --prefix=/usr        

    make && make check
}

cd $here
