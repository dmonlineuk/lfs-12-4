#! /bin/bash
here=`pwd`
cd /sources/glibc-2.42

make check

cd $here