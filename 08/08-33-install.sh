#! /bin/bash
here=`pwd`
cd /sources/gettext-0.26

time {
    make install
    chmod -v 0755 /usr/lib/preloadable_libintl.so 
}

cd $here

echo "If complete, delete 'rm -rf /sources/gettext-0.26'"
