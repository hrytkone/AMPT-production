#!/bin/bash

mkdir outputs

njobs=10
nevents=10
for (( i=1; i<=$njobs; i++ ))
do
    eventfirst=$(((i-1)*nevents))
    sbatch -o outputs/out$i -e outputs/errout$i -J ampt -n 1 run $i $eventfirst $nevents
    sleep 1
done
