# AMPT simulation

Simulation code meant to be run using Slurm.

## Content:
* Ampt (directory)
    * Contains the AMPT code (myweb.ecu.edu/linz/ampt/)
    * For now on the energy must be changed here in the input.ampt file
* ampt-run (directory)
    * submit.sh
        * used to submit jobs, give number of jobs and number of events here
    * run
        * script where AMPT and run macro are run
        * CHANGE HERE THE PATHS BEFORE RUNNING!
    * AmptToNTuple.C
        * ROOT macro that creates TNtuple from AMPT output file
