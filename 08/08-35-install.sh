#! /bin/bash
here=`pwd`
cd /sources/grep-3.12

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/grep-3.12'"
