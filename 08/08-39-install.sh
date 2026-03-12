#! /bin/bash
here=`pwd`
cd /sources/gperf-3.3

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/gperf-3.3'"
