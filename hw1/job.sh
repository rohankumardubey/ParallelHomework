
# NOTICE: Please do not remove the '#' before 'PBS'

# Select which queue (debug, batch) to run on
#PBS -q batch 

# Name of your job
#PBS -N test

# Declaring job as not re-runnable
#PBS -r n

# Resource allocation (how many nodes? how many processes per node?)
#PBS -l nodes=2:ppn=6

# Max execution time of your job (hh:mm:ss)
# Debug cluster max limit: 00:05:00 
# Batch cluster max limit: 00:30:00
# Your job may got killed if you exceed this limit
#PBS -l walltime=00:00:05

cd $PBS_O_WORKDIR
time mpirun ./2 50 testcase/testcase4 result_4
