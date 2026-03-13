#! /bin/bash
here=`pwd`
cd /sources
tar xf elfutils-0.193.tar.bz2
cd elfutils-0.193

./configure --prefix=/usr        \
            --disable-debuginfod \
            --enable-libdebuginfod=dummy

time {
    make && make check
}

echo "Two tests are known to fail, dwarf_srclang_check and run-backtrace-native-core.sh."

cd $here
