#! /bin/bash
here=`pwd`
cd /sources/elfutils-0.193

time {
    make -C libelf install 
    install -vm644 config/libelf.pc /usr/lib/pkgconfig
}

rm /usr/lib/libelf.a

cd $here

echo "If complete, delete 'rm -rf /sources/elfutils-0.193'"
