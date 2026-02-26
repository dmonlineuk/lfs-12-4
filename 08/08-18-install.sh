#! /bin/bash
here=`pwd`
cd /sources/dejagnu-1.6.3/build/

time {
    make install

    install -v -dm755  /usr/share/doc/dejagnu-1.6.3
    install -v -m644   doc/dejagnu.{html,txt} /usr/share/doc/dejagnu-1.6.3
}

cd $here

echo "If complete, delete 'rm -rf /sources/dejagnu-1.6.3'"
