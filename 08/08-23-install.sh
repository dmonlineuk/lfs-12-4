#! /bin/bash
here=`pwd`
cd /sources/mpc-1.3.1

time {
    make install && make install-html
}

cd $here

echo "If complete, delete 'rm -rf /sources/mpc-1.3.1'"
