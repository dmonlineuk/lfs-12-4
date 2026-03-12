#! /bin/bash
here=`pwd`
cd /sources
tar xf inetutils-2.6.tar.xz
cd inetutils-2.6

time {
    ./configure --prefix=/usr        \
            --bindir=/usr/bin    \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers

    make && make check
}

cd $here
