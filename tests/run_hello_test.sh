#!/bin/sh
# This is a test script for the sample project. It runs the hello program.
#
# Andrew King, 6/5/23

set -e
echo ""
echo "*** Running hello test"

# Run hello and capture the output.
../src/fizzbuzz > hello.txt

# Check against expected output.
cmp hello.txt ref_hello.txt

echo "*** SUCCESS!"
exit 0