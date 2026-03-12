#! /bin/bash
here=`pwd`
cd /sources/gdbm-1.26

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/gdbm-1.26'"
