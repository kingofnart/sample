#!/bin/sh
# This is a test script for the sample project. It runs the hello program.
#
# Andrew King, 6/5/23

set -e
echo ""
echo "*** Running hello test"

# Run hello and capture the output.
../src/hello > hello.txt



# Check against expected output.
cmp hello.txt ref_hello.txt

# Run and compare with other file
../src/fizzbuzz > fizzbuzz.txt
cmp fizzbuzz.txt ref_fizzbuzz.txt


echo "*** SUCCESS!"
exit 0