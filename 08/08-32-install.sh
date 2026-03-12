#! /bin/bash
here=`pwd`
cd /sources/psmisc-23.7

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/psmisc-23.7'"
