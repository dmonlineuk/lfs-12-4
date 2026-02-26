#! /bin/bash
here=`pwd`
cd /sources/mpfr-4.2.2

time {
    make install && make install-html
}

cd $here

echo "If complete, delete 'rm -rf /sources/mpfr-4.2.2'"
