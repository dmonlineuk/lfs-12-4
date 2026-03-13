#! /bin/bash
here=`pwd`
cd /sources/automake-1.18.1

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/automake-1.18.1'"
