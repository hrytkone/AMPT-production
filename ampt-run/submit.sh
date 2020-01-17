#!/bin/bash

if [ "$1" == "-h" ]
then
    echo "Usage: `basename $0` comment njobs[=1] nevents[=1] energy[=50 (give in GeV)] bmin[=6.05 (give in fm)] bmax[=6.98 (give in fm)]"
    exit 0
fi

if [ -z "$1" ]
then
    echo "Please give a comment to make this run unique (check `basename $0` -h for help)"
    exit 0
fi

source setup.sh

if [ -z "$2" ]
then
    njobs=1
else
    njobs=$2
fi

if [ -z "$3" ]
then
    nevents=1
else
    nevents=$3
fi

if [ -z "$4" ]
then
    energy=50
else
    energy=$4
fi

if [ -z "$5" ]
then
    bmin=6.05
else
    bmin=$5
fi

if [ -z "$6" ]
then
    bmax=6.98
else
    bmax=$6
fi

outputdir=run_${1}_n$(($njobs * $nevents))_${energy}GeV
mkdir $outputdir
mkdir ${outputdir}/logs

for (( i=1; i<=$njobs; i++ ))
do
    eventfirst=$(((i-1)*nevents))
    sbatch -o ${outputdir}/logs/log$i -e ${outputdir}/logs/errout$i -J ampt -n 1 run $i $eventfirst $nevents $energy $bmin $bmax $outputdir
    sleep 1
done
