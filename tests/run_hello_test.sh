#!/bin/sh
# This is a test script for the sample project. It runs the hello program.
#
# Andrew King, 6/5/23

set -e
echo ""
echo "*** Running hello test"

# Run hello and fizzbuzz programs and capture the output.
../src/hello > hello.txt
../src/fizzbuzz > fizzbuzz.txt

# Check acutal against expected output.
cmp hello.txt ref_hello.txt
cmp fizzbuzz.txt ref_fizzbuzz.txt

echo "*** SUCCESS!"
exit 0