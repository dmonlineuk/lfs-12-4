#! /bin/bash
here=`pwd`
cd /sources
tar xf grep-3.12.tar.xz
cd grep-3.12

sed -i "s/echo/#echo/" src/egrep.sh

time {
    ./configure --prefix=/usr

    make && make check
}

cd $here
