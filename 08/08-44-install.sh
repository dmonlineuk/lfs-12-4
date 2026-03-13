#! /bin/bash
here=`pwd`
cd /sources/XML-Parser-2.47

time {
    make install 
}

cd $here

echo "If complete, delete 'rm -rf /sources/XML-Parser-2.47'"
