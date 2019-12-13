# AMPT simulation

Simulation code meant to be run using Slurm.

## Content:
* Ampt (directory)
    * Contains the AMPT code (myweb.ecu.edu/linz/ampt/)
    * For now on the energy must be changed here in the input.ampt file
* ampt-run (directory)
    * setup.sh
        * change path here!
    * submit.sh
        * used to submit jobs, run ./submit.sh -h to see what input arguments need to be given
    * run
        * script where AMPT and run macro are run
    * AmptToNTuple.C
        * ROOT macro that creates TNtuple from AMPT output file
