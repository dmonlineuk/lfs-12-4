#! /bin/bash
here=`pwd`
cd /sources/attr-2.5.2

time {
    make install
}

cd $here

echo "If complete, delete 'rm -rf /sources/attr-2.5.2'"
