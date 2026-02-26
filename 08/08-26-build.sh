#! /bin/bash
here=`pwd`
cd /sources
tar xf libcap-2.76.tar.xz
cd libcap-2.76

sed -i '/install -m.*STA/d' libcap/Makefile

time {
    make prefix=/usr lib=lib
    
    make test
}

cd $here
