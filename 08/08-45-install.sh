#! /bin/bash
here=`pwd`
cd /sources/intltool-0.51.0

time {
    make install 
}

install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO

cd $here

echo "If complete, delete 'rm -rf /sources/intltool-0.51.0'"
