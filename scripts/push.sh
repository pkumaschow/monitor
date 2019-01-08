#!/usr/bin/bash

i=0
while sleep 5
do
# ((i+=1))
 i=$(echo "$i + 0.05" | bc)
# VALUE=$i
VALUE=$(echo "s($i) * 30" |  bc -l)
# TS=`date +%s`000
 echo "testmetric $VALUE"
 cat <<EOF | curl --data-binary @- http://localhost:9091/metrics/job/testjob/testlabel/testmetric
# TYPE testmetric counter
# HELP testmetric Just an example
testmetric $VALUE
EOF
done
