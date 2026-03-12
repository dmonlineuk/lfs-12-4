#! /bin/bash
here=`pwd`
cd /sources/bash-5.3

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/bash-5.3'"

exec /usr/bin/bash --login
