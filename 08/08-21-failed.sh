#! /bin/bash
here=`pwd`
cd /sources/gmp-6.3.0

echo "Note what failures come up and act accordingly. If nothing, then we'll assume all success"
awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

cd $here
