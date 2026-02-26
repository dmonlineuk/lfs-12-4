#! /bin/bash
here=`pwd`
cd /sources
tar xf gmp-6.3.0.tar.xz
cd gmp-6.3.0

sed -i '/long long t1;/,+1s/()/(...)/' configure

time {
    ./configure --prefix=/usr       \
	    --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.3.0

    make 
    make html

    make check 2>&1 | tee gmp-check-log
}

cd $here
