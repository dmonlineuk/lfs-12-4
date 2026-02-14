#! /bin/bash
here=`pwd`
cd /sources/glibc-2.42/build/

time {
    make check
}

cd $here
