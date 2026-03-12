#! /bin/bash
here=`pwd`
cd /sources
tar xf less-679.tar.gz
cd less-679

time {
    ./configure --prefix=/usr --sysconfdir=/etc

    make && make check
}

cd $here
