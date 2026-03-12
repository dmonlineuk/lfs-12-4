#! /bin/bash
here=`pwd`
cd /sources/bison-3.8.2

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/bison-3.8.2'"
