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
        * possible arguments are:
            * comment: unique comment for run directory name
            * njobs[=1]: number of jobs to submit
            * nevents[=1]: number of heavy ion events
            * energy[=50 (give in GeV)]: collision energy
            * bmin[=6.05 (give in fm)]: minimum impact parameter
            * bmax[=6.98 (give in fm)]: maximum impact parameter
    * run
        * script where AMPT and ROOT macro are run
        * change here which ROOT macro you want to use!
            * NTuple preferred since the file size is smaller compared to TTree
    * AmptToNTuple.C
        * ROOT macro that creates TNtuple from AMPT output file
    * AmptToTTree.C
        * ROOT macro that creates TTree from AMPT output file
