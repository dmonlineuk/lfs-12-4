#! /bin/bash
here=`pwd`
cd /sources
tar xf dejagnu-1.6.3.tar.gz
cd dejagnu-1.6.3

mkdir -v build && cd build

time {
    ../configure --prefix=/usr

    makeinfo --html --no-split -o doc/dejagnu.html ../doc/dejagnu.texi
    makeinfo --plaintext       -o doc/dejagnu.txt  ../doc/dejagnu.texi

    make check
}

cd $here
