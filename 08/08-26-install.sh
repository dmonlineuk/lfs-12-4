#! /bin/bash
here=`pwd`
cd /sources/libcap-2.76

time {
    make prefix=/usr lib=lib install
}

cd $here

echo "If complete, delete 'rm -rf /sources/libcap-2.76'"
