#! /bin/bash
here=`pwd`
cd /sources/perl-5.42.0

time {
    make install 
}

unset BUILD_ZLIB BUILD_BZIP2

cd $here

echo "If complete, delete 'rm -rf /sources/perl-5.42.0'"
