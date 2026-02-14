#! /bin/bash
here=`pwd`
cd /sources/xz-5.8.1/

time {
    make install
}

cd $here

echo "If complete, delete 'rm -rf /sources/xz-5.8.1'"
