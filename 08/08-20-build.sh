#! /bin/bash
here=`pwd`
cd /sources
tar xf binutils-2.45.tar.xz
cd binutils-2.45

mkdir -v build && cd build

time {
    ../configure --prefix=/usr       \
             --sysconfdir=/etc   \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --enable-new-dtags  \
             --with-system-zlib  \
             --enable-default-hash-style=gnu

    make tooldir=/usr

    make -k check
}

cd $here
