#! /bin/bash
here=`pwd`
cd /sources
tar xf XML-Parser-2.47.tar.gz
cd XML-Parser-2.47

perl Makefile.PL

time {
    make && make test
}

cd $here
