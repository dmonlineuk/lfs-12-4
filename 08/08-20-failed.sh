#! /bin/bash
here=`pwd`
cd /sources/binutils-2.45/build

grep '^FAIL:' $(find -name '*.log')

cd $here
