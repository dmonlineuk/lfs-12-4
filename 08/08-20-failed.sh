#! /bin/bash
here=`pwd`
cd /sources/binutils-2.45/build

echo "Note what failures come up and act accordingly. If nothing, then we'll assume all success"
grep '^FAIL:' $(find -name '*.log')

cd $here
