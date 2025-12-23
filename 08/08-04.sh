#! /bin/bash
here=`pwd`
cd /sources
tar xf iana-etc-20251120.tar.gz
cd iana-etc-20251120

cp -v services protocols /etc

cd $here

echo "If complete, delete 'rm -rf /sources/iana-etc-20251120'"
