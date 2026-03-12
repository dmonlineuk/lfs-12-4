#! /bin/bash
here=`pwd`
cd /sources
tar xf gettext-0.26.tar.xz
cd gettext-0.26

time {
    ./configure --prefix=/usr        \
	    --disable-static \
            --docdir=/usr/share/doc/gettext-0.26

    make && make check
}

cd $here
