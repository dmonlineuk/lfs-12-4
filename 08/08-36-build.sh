#! /bin/bash
here=`pwd`
cd /sources
tar xf bash-5.3.tar.gz
cd bash-5.3

time {
    ./configure --prefix=/usr             \
            --without-bash-malloc     \
            --with-installed-readline \
            --docdir=/usr/share/doc/bash-5.3

    make
}

cd $here
