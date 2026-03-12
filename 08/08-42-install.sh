#! /bin/bash
here=`pwd`
cd /sources/less-679

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/less-679'"
