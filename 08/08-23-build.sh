#! /bin/bash
here=`pwd`
cd /sources
tar xf mpc-1.3.1.tar.gz
cd mpc-1.3.1

time {
    ./configure --prefix=/usr        \
            --disable-static     \
            --docdir=/usr/share/doc/mpc-1.3.1

    make && make html
    
    make check
}

cd $here
