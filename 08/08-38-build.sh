#! /bin/bash
here=`pwd`
cd /sources
tar xf gdbm-1.26.tar.gz
cd gdbm-1.26

time {
    ./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat

    make && make check
}

cd $here
