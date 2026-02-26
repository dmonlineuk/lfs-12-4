#! /bin/bash
here=`pwd`
cd /sources/binutils-2.45/build/

time {
    make tooldir=/usr install
}

rm -rfv /usr/lib/lib{bfd,ctf,ctf-nobfd,gprofng,opcodes,sframe}.a \
        /usr/share/doc/gprofng/

cd $here

echo "If complete, delete 'rm -rf /sources/binutils-2.45'"
