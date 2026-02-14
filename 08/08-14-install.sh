#! /bin/bash
here=`pwd`
cd /sources/bc-7.0.3

time {
    make install
}

cd $here

echo "If complete, delete 'rm -rf /sources/bc-7.0.3'"
