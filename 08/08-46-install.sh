#! /bin/bash
here=`pwd`
cd /sources/autoconf-2.72

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/autoconf-2.72'"
