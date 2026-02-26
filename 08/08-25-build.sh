#! /bin/bash
here=`pwd`
cd /sources
tar xf acl-2.3.2.tar.xz
cd acl-2.3.2

time {
    ./configure --prefix=/usr        \
            --disable-static     \
            --docdir=/usr/share/doc/acl-2.3.2

    make
    
    make check
}

cd $here
