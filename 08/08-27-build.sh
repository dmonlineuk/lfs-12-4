#! /bin/bash
here=`pwd`
cd /sources
tar xf libxcrypt-4.4.38.tar.xz
cd libxcrypt-4.4.38

time {
    ./configure --prefix=/usr        \
            --enable-hashes=strong,glibc \
            --enable-obsolete-api=no     \
	    --disable-static     \
	    --disable-failure-tokens

    make
    
    make check
}

cd $here
