#! /bin/bash
here=`pwd`
cd /sources/expat-2.7.1

time {
    make install 
}

install -v -m644 doc/*.{html,css} /usr/share/doc/expat-2.7.1

cd $here

echo "If complete, delete 'rm -rf /sources/expat-2.7.1'"
