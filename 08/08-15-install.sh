#! /bin/bash
here=`pwd`
cd /sources/flex-2.6.4

time {
    make install
}

ln -sv flex   /usr/bin/lex
ln -sv flex.1 /usr/share/man/man1/lex.1

cd $here

echo "If complete, delete 'rm -rf /sources/flex-2.6.4'"
