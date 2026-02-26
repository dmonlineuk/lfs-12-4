#! /bin/bash
here=`pwd`
cd /sources/shadow-4.18.0

pwconv
grpconv
mkdir -p /etc/default
useradd -D --gid 999
passwd root

cd $here

echo "If complete, delete 'rm -rf /sources/shadow-4.18.0'"
