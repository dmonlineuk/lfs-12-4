#! /bin/bash
here=`pwd`
cd /sources/expect5.45.4/

time {
    make install
}

ln -svf expect5.45.4/libexpect5.45.4.so /usr/lib

cd $here

echo "If complete, delete 'rm -rf /sources/expect5.45.4'"
