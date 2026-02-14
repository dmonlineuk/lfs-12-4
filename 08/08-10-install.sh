#! /bin/bash
here=`pwd`
cd /sources/zstd-1.5.7

time {
    make prefix=/usr install
}

rm -v /usr/lib/libzstd.a

cd $here

echo "If complete, delete 'rm -rf /sources/zstd-1.5.7'"
