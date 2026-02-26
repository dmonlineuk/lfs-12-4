#! /bin/bash
here=`pwd`
cd /sources/gcc-15.2.0/build

time {
    make install 
}

chown -v -R root:root \
    /usr/lib/gcc/$(gcc -dumpmachine)/15.2.0/include{,-fixed}

ln -svr /usr/bin/cpp /usr/lib
ln -sv gcc.1 /usr/share/man/man1/cc.1
ln -sfv ../../libexec/gcc/$(gcc -dumpmachine)/15.2.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/

echo 'int main(){}' | cc -x c - -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib'
echo "expected: [Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]"

grep -E -o '/usr/lib.*/S?crt[1in].*succeeded' dummy.log
echo "expected:"
echo "/usr/lib/gcc/x86_64-pc-linux-gnu/15.2.0/../../../../lib/Scrt1.o succeeded"
echo "/usr/lib/gcc/x86_64-pc-linux-gnu/15.2.0/../../../../lib/crti.o succeeded"
echo "/usr/lib/gcc/x86_64-pc-linux-gnu/15.2.0/../../../../lib/crtn.o succeeded"

grep -B4 '^ /usr/include' dummy.log
echo "expected:"
echo "#include <...> search starts here:"
echo " /usr/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include"
echo " /usr/local/include"
echo " /usr/lib/gcc/x86_64-pc-linux-gnu/15.2.0/include-fixed"
echo " /usr/include"

grep 'SEARCH.*/usr/lib' dummy.log |sed 's|; |\n|g'
echo "expected:"
echo 'SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib64")'
echo 'SEARCH_DIR("/usr/local/lib64")'
echo 'SEARCH_DIR("/lib64")'
echo 'SEARCH_DIR("/usr/lib64")'
echo 'SEARCH_DIR("/usr/x86_64-pc-linux-gnu/lib")'
echo 'SEARCH_DIR("/usr/local/lib")'
echo 'SEARCH_DIR("/lib")'
echo 'SEARCH_DIR("/usr/lib");'

grep "/lib.*/libc.so.6 " dummy.log
echo "expected: attempt to open /usr/lib/libc.so.6 succeeded"

grep found dummy.log
echo "expected: found ld-linux-x86-64.so.2 at /usr/lib/ld-linux-x86-64.so.2"

rm -v a.out dummy.log

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib

cd $here

echo "If complete, delete 'rm -rf /sources/gcc-15.2.0'"
