#! /bin/bash
here=`pwd`
cd /sources/libxcrypt-4.4.38

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/libxcrypt-4.4.38'"
