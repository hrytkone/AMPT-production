#!/bin/bash
###############################################

###############################################
# Usage and arguments
###############################################
PROG=`basename $0`
if [ $# -ne 1 ]
then
    echo "Usage: ${PROG} comment"
    exit;
fi

###############################################
# Script arguments
###############################################
export comment=$1

###############################################
# Run settings
###############################################
export njobs=1

###############################################
# Program name
###############################################
export DoWhat=exec
export oname=${DoWhat}_${comment}

###############################################
# Create job directories & submit jobs
###############################################
for i in `seq 0 $(($njobs-1))`
do

echo $i
jobi=job$i
mkdir $jobi
mkdir $jobi/ana

cp ampt $jobi
cp input.ampt $jobi
cp exec.sh $jobi
cp jobsub.slurm $jobi
sed "s/jb0/$jobi/g" $jobi/jobsub.slurm > $jobi/jobsub$i.slurm
rm $jobi/jobsub.slurm

cd $jobi
sbatch -J ${oname}$i -o out_job$i.out jobsub$i.slurm
cd ..

done

