#!/bin/bash

# run the test 10 times 
for i in {1..10}
do
    echo $(curl -s -w '%{time_total}' -H 'Cache-Control: no-cache' -o /dev/null http://localhost:3000)
done

