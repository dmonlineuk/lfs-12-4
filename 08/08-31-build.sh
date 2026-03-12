#! /bin/bash
here=`pwd`
cd /sources
tar xf sed-4.9.tar.xz
cd sed-4.9

time {
    ./configure --prefix=/usr        

    make && make html
}

chown -R tester .
su tester -c "PATH=$PATH make check"

cd $here
