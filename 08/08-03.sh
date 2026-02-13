#! /bin/bash
here=`pwd`
cd /sources
tar xf man-pages-6.15.tar.xz
cd man-pages-6.15

rm -v man3/crypt*

make -R GIT=false prefix=/usr install

cd $here

echo "If complete, delete 'rm -rf /sources/man-pages-6.15'"
