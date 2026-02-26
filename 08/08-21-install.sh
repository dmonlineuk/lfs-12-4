#! /bin/bash
here=`pwd`
cd /sources/gmp-6.3.0

time {
    make install
    make install-html
}

cd $here

echo "If complete, delete 'rm -rf /sources/gmp-6.3.0'"
