#! /bin/bash
here=`pwd`
cd /sources
tar xf mpfr-4.2.2.tar.xz
cd mpfr-4.2.2

time {
    ./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.2.2

    make && make html
    
    make check
}

cd $here
