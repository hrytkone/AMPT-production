# AMPT simulation

Simulation code meant to be run using Slurm.

## Content:
* Ampt (directory)
    * Contains the AMPT code (myweb.ecu.edu/linz/ampt/)
* ampt-run (directory)
    * setup.sh
        * change path here!
    * submit.sh
        * used to submit jobs, run ./submit.sh -h to see what input arguments need to be given
    * run
        * script where AMPT and ROOT macro are run
        * change here which ROOT macro you want to use!
    * AmptToNTuple.C
        * ROOT macro that creates TNtuple from AMPT output file
    * AmptToTTree.C
        * ROOT macro that creates TTree from AMPT output file
