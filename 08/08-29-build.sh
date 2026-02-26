#! /bin/bash
here=`pwd`
cd /sources
tar xf gcc-15.2.0.tar.xz
cd gcc-15.2.0

case $(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' \
        -i.orig gcc/config/i386/t-linux64
  ;;
esac

mkdir -v build && cd build

time {
    ../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --enable-default-pie     \
             --enable-default-ssp     \
             --enable-host-pie        \
             --disable-multilib       \
             --disable-bootstrap      \
             --disable-fixincludes    \
             --with-system-zlib

    make 
    
    ulimit -s -H unlimited
    sed -e '/cpython/d' -i ../gcc/testsuite/gcc.dg/plugin/plugin.exp
    chown -R tester .
    su tester -c "PATH=$PATH make -k check"
}

cd $here
