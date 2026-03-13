#! /bin/bash
here=`pwd`
cd /sources
tar xf intltool-0.51.0.tar.gz
cd intltool-0.51.0

sed -i 's:\\\${:\\\$\\{:' intltool-update.in

./configure --prefix=/usr

time {
    make && make check
}

cd $here
