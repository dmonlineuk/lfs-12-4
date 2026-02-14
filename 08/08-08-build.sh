#! /bin/bash
here=`pwd`
cd /sources
tar xf xz-5.8.1.tar.xz
cd xz-5.8.1

time {
    ./configure --prefix=/usr	\
	    --disable-static	\
	    --docdir=/usr/share/doc/xz-5.8.1

    make && make check
}

cd $here
