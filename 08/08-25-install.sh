#! /bin/bash
here=`pwd`
cd /sources/acl-2.3.2

time {
    make install
}

cd $here

echo "If complete, delete 'rm -rf /sources/acl-2.3.2'"
