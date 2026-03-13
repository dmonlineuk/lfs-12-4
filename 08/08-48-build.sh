#! /bin/bash
here=`pwd`
cd /sources
tar xf openssl-3.5.2.tar.gz
cd openssl-3.5.2

./configure --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic

time {
    make

    HARNESS_JOBS=$(nproc) make test
}

cd $here
