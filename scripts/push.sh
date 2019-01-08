#!/usr/bin/bash
i=0
while sleep 5
do
 VALUE=$i
 ((i+=1))
# TS=`date +%s`000
 echo "testmetric $VALUE"
 cat <<EOF | curl --data-binary @- http://localhost:9091/metrics/job/testjob/testlabel/testmetric
# TYPE testmetric counter
# HELP testmetric Just an example
testmetric $VALUE
EOF
done
