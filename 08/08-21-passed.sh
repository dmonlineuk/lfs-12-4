#! /bin/bash
here=`pwd`
cd /sources/gmp-6.3.0

echo "Ensure at least 199 tests passed. Following is the total count of passes:"
awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log

cd $here
