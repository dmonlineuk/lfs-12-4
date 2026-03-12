#! /bin/bash
here=`pwd`
cd /sources/sed-4.9

time {
    make install 
    install -d -m755           /usr/share/doc/sed-4.9
    install -m644 doc/sed.html /usr/share/doc/sed-4.9
}

cd $here

echo "If complete, delete 'rm -rf /sources/sed-4.9'"
