#! /bin/bash
here=`pwd`
cd /sources/lz4-1.10.0

time {
    make BUILD_STATIC=no PREFIX=/usr install
}

cd $here

echo "If complete, delete 'rm -rf /sources/lz4-1.10.0'"
