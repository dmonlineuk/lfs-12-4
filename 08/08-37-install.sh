#! /bin/bash
here=`pwd`
cd /sources/libtool-2.5.4

time {
    make install 
}

rm -fv /usr/lib/libltdl.a

cd $here

echo "If complete, delete 'rm -rf /sources/libtool-2.5.4'"
