#! /bin/bash
here=`pwd`
cd /sources
tar xf flex-2.6.4.tar.gz
cd flex-2.6.4

time {
    ./configure --prefix=/usr	\
	    --docdir=/usr/share/doc/flex-2.6.4 \
            --disable-static
    make
    make check
}

cd $here
