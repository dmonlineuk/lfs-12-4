#! /bin/bash
here=`pwd`
cd /sources
tar xf expat-2.7.1.tar.xz
cd expat-2.7.1

time {
    ./configure --prefix=/usr 	\
    --disable-static		\
    --docdir=/usr/share/doc/expat-2.7.1

    make && make check
}

cd $here
