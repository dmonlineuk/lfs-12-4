#! /bin/bash
here=`pwd`
cd /sources/inetutils-2.6

time {
    make install 
}

mv -v /usr/{,s}bin/ifconfig

cd $here

echo "If complete, delete 'rm -rf /sources/inetutils-2.6'"
