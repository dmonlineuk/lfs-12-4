#! /bin/bash
here=`pwd`
cd /sources/openssl-3.5.2

sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile

time {
    make MANSUFFIX=ssl install
}

mv -v /usr/share/doc/openssl /usr/share/doc/openssl-3.5.2

cp -vfr doc/* /usr/share/doc/openssl-3.5.2

cd $here

echo "If complete, delete 'rm -rf /sources/openssl-3.5.2'"
