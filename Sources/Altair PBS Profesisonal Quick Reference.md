


Prepared by NSCC, 31 January 2023


Altair PBS CHEAT SHEET
## Introduction
PBS Professional is a fast, powerful workload manager designed to
improve productivity, optimize utilization and efficiency, and simplify
administration for clusters, clouds, and supercomputers — from the
biggest HPC workloads to millions of small, high-throughput jobs.

## User Commands
qsub <job_script/arguments>
Submit a job
qsub -I
“l” is upper-case of i. Submit an
interactive job
qsub -IX
“l” is upper-case of i . Submit an
interactive job with X forwarding
qstat -Q Print Queue information
qhold <jobID>
Hold a job
qrls <jobID>
Release a job
pbsnodes -a
Print node information


## Job Monitoring
qstat <jobID>
Job status
qstat -f <jobID>
Job status with all information
qstat -x
## Job History
qstat -ans
Job-status with comments and
vnode info
qstat <jobID> @pbs102
Job status at specific cluster
Deleting jobs
qdel <jobID>
Delete a job (kill a job)
qdel -W force <jobID>
Force kill a job
Requesting job resources
-l select=3:ncpus=128
Request for 3 chunks/nodes with
128 CPUs (cores) each
-l select=1:ncpus=128:mem=500gb
1 chuck/node with 128 CPUs (cores)
and 500GB of RAM
-l walltime=01:00:00
Request for 1hour total wall-time
## HH:MM:SS
## -l
select=3:ncpus=128:ngpus=1:mem=254g
b
Request for 1 chunk/node with 1
GPU, 128CPUs (cores) and 254GB of
## RAM
## -l
container_image=docker.io/tensorflow:
latest
Requesting container image as
resource for container job
Job Submission options (qsub)
-P <project_account>
Specifying a project account
-N <jobname>
Specifying a name to the job
## -l <resource_list>
Requesting job resources
(select,ncpus, ngpu,mem.....)
-q normal
Specifying the queue name
## (normal/ai)
## -v <alphanumeric>
Exporting specific environment
variables.
## -e <filename>
Specifying path for error file
## -o <filename>
Specifying path for output file
-j oe
Merging output and error files


Prepared by NSCC, 31 January 2023
-J X-Y [:z]
Defining job array
## -h
Holding a job
-M id@domain.com
Setting email recipient list
-m abe
Specifying email notification events
a: aborted, b: begins, e: terminates
-a date_time
Deferring execution. Date_time
format:
[[[[YYYY]MM]DD]hhmm[.SS]]
-W depend=<type>:<arg_lists> <job ID>
Specifying job dependencies
EG: qsub -W
depend=afterok:123.pbs101:124.pb
s101 myjobscript.sh
## Environment Variables
## PBS_JOBID
Job identifier given by PBS when the
job is submitted. Created upon
execution.
## PBS_JOBNAME
Job name given by user. Created
upon execution.
## PBS_NODEFILE
The filename containing a list of
vnodes assigned to the job.
## PBS_O_WORKDIR
Absolute path to directory where
qsub is run. Value taken from user’s
submission environment
## TMPDIR
Pathname of job’s scratch directory
## NCPUS
Number of threads, defaulting to
number of CPUs (cores), on the
vnode
## OMP_NUM_THREADS
Number of Threads per process
## PBS_ARRARY_ID
Identifier for job arrays. Consists of
sequence number.
## PBS_ARRARY_INDEX
Index number of subjob in job
array.
## PBS_JOBDIR
Pathname of job’s staging and
execution directory on the primary
execution host.
## Job States
E Job is exiting after having run
F Job is finished. Job has completed
execution, job failed during execution,
or job was deleted
H Job is held
M Job was moved to another PBS
complex
Q Job is queued, eligible to run or be
routed
R Job is running
S Job is suspended by PBS
T Job is in transition
W Job is waiting for its requested
execution time to be reached, or job
specified a stage-in request which
failed for some reason

