#! /bin/bash
here=`pwd`
cd /sources/file-5.46

time {
    make install
}

cd $here

echo "If complete, delete 'rm -rf /sources/file-5.46'"
