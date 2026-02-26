#! /bin/bash
here=`pwd`
cd /sources/cd shadow-4.18.0/build

../contrib/test_summary

echo "To filter out only the summaries, pipe the output through 'grep -A7 Summ.'"

echo "Results can be compared with those located at https://www.linuxfromscratch.org/lfs/build-logs/12.4/ and https://gcc.gnu.org/ml/gcc-testresults/."

cd $here
