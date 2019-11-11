#!/bin/bash
# Simple test
echo "Testing c3.example.com"
dig @test-server -p 5300 c3.example.com +timeout=1 +tries=3
ret=`dig @test-server -p 5300 c3.example.com +timeout=1 +tries=1`
retS=$?
if [ "$retS" == "0" ]; then
    echo "OK"
    echo "PRESS Ctrl+C to exit"
    exit 0
else
    echo "NOK"
    echo "PRESS Ctrl+C to exit"
    exit 1
fi