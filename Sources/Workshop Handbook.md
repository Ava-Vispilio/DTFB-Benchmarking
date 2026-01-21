#### 6 March 2024 1
Introductory Workshop Handbook
Version 2.0 - 01-02 -2025
Preface
Welcome to the ASPIRE 2A Introductory Workshop Handbook. This handbook is designed to provide you
with the essential knowledge and practical exercises needed to navigate and utilize the ASPIRE 2A
supercomputing resources effectively. Whether you are a beginner or have some experience, the
exercises and guidelines outlined in this handbook will help you develop a strong foundation in using the
NSCC Aspire2a supercomputer for your computational tasks.
Table of Contents
1. Workshop Prerequisites
2. Exercise 1: User Enrolment
3. Exercise 2: Connect to NSCC VPN
4. Exercise 3: Login to NSCC Supercomputer
5. Exercise 4: Brief Guide on VI Editor
6. Exercise 5: Check Project SU and Storage Quota Utilization
7. Exercise 6: File Transfer Using FileZilla
8. Exercise 7: Clone Workshop Directory to Your Directory
9. Exercise 8: Software Environment
10. Exercise 9: Compiling Applications and Submitting Jobs
11. Exercise 10: Singularity and Miniforge
6 March 2024 2
Workshop Prerequisite:
FOR WINDOWS PC:
1. SSH client for Window PC (Users have to select one of the following):
● Mobaxterm:
```
http://mobaxterm.mobatek.net/ - Downloads -> Download Now (Free)
```
● Putty:
```
https://putty.org/ - Download PuTTY -> 64bit x86 putty.exe
```
2. File transfer client (Users are to select one of the following):
● Filezilla
```
https://filezilla-project.org/ -> Download FileZilla client
```
● WinSCP
```
https://winscp.net/eng/index.php -> Download WinSCP
```
FOR LINUX/MAC :
Use the built-in terminal.
● SSH Connection: Use the command ssh <hostname> to connect.
● File Transfer: Use scp or rsync for file transfers.
PROJECT TO USE:
● Submit your jobs using your personal project e.g: personal-<userid>
● Alternatively, use the project assigned to you.
QUEUE TO USE:
```
 For normal jobs (e.g., CPU and GPU jobs), submit to the “normal” queue.
```
Exercise 1: User Enrolment
For users from A*STAR/NTU/NUS/SUTD/SIT/SMU/SP/TP
1. Go to https://user.nscc.sg/saml/
2. Login with the respective organisation credentials
3. Follow the onscreen procedure to complete enrolment
For more information, please refer to User Enrolment Guide
6 March 2024 3
```
Exercise 2: Connect to NSCC VPN (Only applicable to users
```
```
enrolled to NSCC VPN)
```
```
Note: Stakeholders need to connect to their institution’s campus Network or campus VPN (for A*STAR,
```
```
NUS, SUTD, NTU and NEA users).
```
All users who have enrolled to NSCC VPN are required to connect via NSCC VPN to access ASPIRE 2A. To
get more information on how to connect to the NSCC VPN, kindly follow the respective Windows, Mac
or Unix VPN connection guides. Note that stakeholders should be able to connect directly to ASPIRE 2A
after connecting to their campus VPN.
Step 1: Enrolling to NSCC VPN
Users are required to enrol in DUO 2FA before connecting to the NSCC VPN. Users will receive an
instruction email from DUO to install the DUO mobile app on their mobile phones. Once installed, users
may proceed to connect to the NSCC VPN.
Please refer to the following guide for the DUO 2FA enrolment steps.
DUO 2FA Enrolment Guide
```
Note: User MUST complete Step 1 before proceeding to Step 2 to successfully connect to the NSCC VPN.
```
Step 2: Access via NSCC VPN
Please refer to the following guides for the setup and connection of the NSCC VPN to ASPIRE2A for
different Operating Systems:
ASPIRE 2A VPN for Windows
ASPIRE 2A VPN for MAC
ASPIRE 2A VPN for Linux
```
Note: Please check your 2FA mobile device pop-up request for the 2FA approval while logging into the
```
NSCC VPN using the ASPIRE2A credentials. NSCC VPN connection would fail without the DUO 2FA
approval.
6 March 2024 4
Exercise 3: Login to NSCC Supercomputer
3.1 Stakeholders: [NUS, NTU, A*STAR, SUTD, NEA]
```
Note: - Need to connect their campus VPN/Network.
```
Stakeholder Hostname FQDN
NUS aspire2a.nus.edu.sg
NTU aspire2antu.nscc.sg
```
Note: - NTU users will need to request NTU jumphost to access
```
ASPIRE2A via aspire2antu.nscc.sg
Please email your jumphost access request to hpcsupport@ntu.edu.sg
How to access jump host:- Using-NTU-JumpHost-to-NSCC-ASPIRE-2A
ASTAR aspire2a.a-star.edu.sg
SUTD aspire2a.sutd.edu.sg
```
NEA(CCRS) 10.117.5.104
```
3.2 Non Stakeholders:
```
Note: - Need to connect to the NSCC VPN first.
```
Hostname FQDN
aspire2a.nscc.sg
login.asp2a.nscc.sg
3.3 Using Mobaxterm ssh client to login:
a. Open Mobaxterm
b. Click on ’Start local terminal’
c. At the prompt type ssh command. Enter the password when prompted
6 March 2024 5
Command to use:
Expected output:
Type your <user-id>
Replace the hostname with below instructions:
NSCC VPN users: aspire2a.nscc.sg
```
NUS: aspire2a.nus.edu.sg
```
```
NTU: aspire2antu.nscc.sg
```
A*STAR: aspire2a.a-star.edu.sg
```
SUTD: aspire2a.sutd.edu.sg
```
$ ssh aspire2a.nscc.sg –l <user-id>
6 March 2024 6
Exercise 4: Brief Guide on vi Editor
In Linux/Unix environment VI editor is mostly used for plain text editing. For creating or modifying job
```
submission scripts in NSCC, we will be using VI to edit the job scripts. (Please note $ is a prompt and
```
```
there is no need to type it). To launch VI:
```
Command to use:
1. Within the VI editor there are 2 modes, “insert mode” and “command mode”.
2. To change to “insert mode” hit one of these keys a/i/o (a – append, i – insert, o – insert new line)
3. To change the mode from “insert mode” to “command mode” hit <Esc> Key
4. To save the file and exit VI editor, from the “command mode” type “:wq “ (write and quit)
5. To quit the vi editor without saving, typing the command “:q!” (quit without changing)
Refer https://help.nscc.sg -> User Guides -> Basic Linux Guide for more commands and examples on vi
editor
$ vi <file- >
6 March 2024 7
Exercise 5: Check Storage Quota Utilisation and Project SU
5.1 To check the disk usage and quota of your home/personal directory.
Command to use:
Expected output:
5.2 To check the project storage and quota, use the command myquota with -p arguments:
Command to use:
Expected output:
$ myquota
$ myquota –p <project-id>
6 March 2024 8
5.3 Checking Projects SU Balance and SU Usage
The “myprojects” command provides information about project usage, user/project-specific details and
historical data reporting with customizable date range.
**Options Available:**
-l: show project usage detail
-s: <start date>, Optional, specify the start date of the detailed usage reporting in YYYY-MM-DD. If not
specified, default to yesterday.
-e: <end_date>, Optional, specify the end date of the detailed usage reporting in YYYY-MM-DD. If not
specified, default to yesterday.
Command to use:
Expected output:
$ myprojects -p <project-id> -l -s <starting-date> -e <end-date>
6 March 2024 9
5.4 To check information on the usage statistics for 7 days and one month and overall.
Command to use:
Expected output:
]$ myusage
6 March 2024 106 March 2024 11
Exercise 6: File transfer using FileZilla
```
Note: For Mac/Linux users, can use scp command or rsync command as alternative to FileZilla
```
6.1 Open FileZilla software application.
1. Type sftp://aspire2a.nscc.sg
2. Navigate to desired directory in the right pane,
```
(Get the workshop material from /app/workshops/introductory/workshop )
```
3. Drag and drop files
Replace the hostname with below instructions:
For NSCC VPN users: aspire2a.nscc.sg
For NUS: aspire2a.nus.edu.sg
For NTU: aspire2antu.nscc.sg
For A*star: aspire2a.a-star.edu.sg
For SUTD : aspire2a.sutd.edu.sg
6 March 2024 12
Exercise 7: Clone workshop directory to your directory.
7.1 Clone workshop directory to home dir.
Commands to use:
$ pwd
$ mkdir Training
$ cd Training
$ pwd
$ git clone /app/workshops/introductory/workshop
$ ls
$ cd workshop
$ ls
Expected output:
6 March 2024 13
Exercise 8: Software Environment
8.1 Show the current loaded modules
Commands to use:
$ module list
Expected output:
8.2 Show compiler versions
Commands to use:
$ cc --version
$ CC --version
$ ftn –-version
Expected output:
8.3 Change cray Environment to Intel Environment
6 March 2024 14
Commands to use:
$ module swap PrgEnv-cray PrgEnv-intel
$ module list
Expected output:
8.4 Show compiler versions
Commands to use:
$ cc --version
$ CC --version
$ ftn –-version
Expected output:
8.5 Load CUDA Environment
Commands to use:
$ module load craype-accel-nvidia80
$ nvcc –-version
6 March 2024 15
Expected output:
8.6 Change to nvhpc Environment
Commands to use:
$ module rm craype-accel-nvidia80
$ module swap PrgEnv-intel PrgEnv-nvhpc
$ module list
$ module rm cray-libsci
$ cc –-version
Expected output:
6 March 2024 16
8.7 List available modules & load python module load
Commands to use:
$ module avail
$ python –V
$ module load python/3.10.9
$ python –V
$ module list
$ which python
Expected output:
8.8 Unload a module
Commands to use:
$ module list
$ module unload python/3.10.9
$ python –V
Expected output:
6 March 2024 17
8.9 Search a module
Commands to use:
$ module -l avail 2>&1 | egrep "gcc"
Expected output:
8.10 Module avail|show application
Commands to use:
$ module avail gcc
$ module show gcc/10.3.0
Expected output:
6 March 2024 18
Exercise 9: Compiling application and submitting job
```
Notes: - Useful PBS commands:
```
PBSPRO COMMAND COMMENTS
qsub <jobname.sh> To submit a job to the cluster.
qstat
qstat -answ
To print running/pending job states on the screen.
qdel <jobid> To remove a job.
qstat -x To display status information for finished and moved jobs.
9.1 Compile a serial source code
❖ Connect to a new console
❖ Choice of compilers: cray
❖ Source file to use: hello.c
Commands to use:
$ cd Training/workshop/1-cray_compiling/
$ module list
$ ls
$ cc -o hello hello.c
$ ls
$ ./hello
Expected output:
6 March 2024 19
9.2 Compile a serial source code
❖ Choice of compilers: intel
❖ Source file to use: hello.c
Commands to use:
$ ls
$ module list
$ module swap PrgEnv-cray PrgEnv-intel
$ module list
$ cc -o hello_intel hello.c
$ ls
$ ./hello_intel
Expected output:
9.3 Submit serial Batch job:
❖ Job submission script: 1-submit-serial.pbs
❖ Change the <project-id> to your project ID.
Commands to use:
$ vi 1-submit-serial.pbs  Update the job script with your project-id
$ cat 1-submit-serial.pbs
$ qsub 1-submit-serial.pbs
6 March 2024 20
$ qstat <job-id>
$ cat serial_job.o7933894
Expected output:
9.4 Submit interactive job.
Commands to use:
$ qsub -I -l select=1:ncpus=1:mem=4g -l walltime=01:00:00 -P <project-id> -
q normal  Update project-id
$ cd $PBS_O_WORKDIR
$ ls
$ ./hello_intel
$ exit
Expected output:
6 March 2024 21
9.5 Compile a Parallel source code
❖ Choice of compilers: cray-mpich cray / Intel
❖ Source file to use: mpihello.c
Commands to use:
$ cd 2-mpi
$ module list
$ ls
$ cc -o mpihello mpihello.c
$ ls
Expected output:
9.6 Submit Interactive job
❖ Choice of compilers: cray-mpich cray / Intel
❖ Source file to use: mpihello.c
Commands to use:
$ qsub -I -l select=1:ncpus=4:mem=12g -l walltime=01:00:00 -P <project-id> -q
normal  Update project-id
$ cd $PBS_O_WORKDIR
$ module list
$ module swap PrgEnv-cray/8.3.3 PrgEnv-intel
$ mpirun -np 4 --cpu-bind depth -d 1 ./mpihello
$ exit
Expected output:
6 March 2024 226 March 2024 23
9.7 Submit Parallel Batch job
❖ Job submission script : mpi_job.pbs
Commands to use:
$ ls
$ vim mpi_job.pbs  Update the job script with your project-id
$ cat mpi_job.pbs
$ qsub mpi_job.pbs
$ qstat
$ cat mpi_job.o7953586  Read the output file
Expected output:
9.8 Compiling a GPU code
❖ Choice of compilers: cray-mpich cray / Intel
❖ Programing Environment: PrgEnv-nvhpc
❖ Source file to use: mpi_gpu_tasks.cpp
❖ Compilation commands: make
Commands to use:
6 March 2024 24
$ cd Training/workshop/3-gpgpu/
$ module list
$ module swap PrgEnv-cray/8.3.3 PrgEnv-nvhpc
$ module rm cray-libsci
$ module list
$ ls
$ make
$ ls
Expected output:
9.8 Submit GPU Interactive job.
Commands to use:
$ qsub -I -l select=1:ngpus=1:mem=110g -l walltime=01:00:00 -P <project-id> -q
normal  Update project-id
$ cd $PBS_O_WORKDIR
$ ls
$ module list
$ module swap PrgEnv-cray PrgEnv-nvhpc
$ module rm cray-libsci
$ ./mpi_gpu
Expected output:
6 March 2024 25
9.9 Submit GPU batch job
❖ Job submission script: gpu.pbs
Commands to use:
$ vi gpu.pbs  Update the job script with your project-id
$ cat gpu.pbs
$ qsub gpu.pbs
$ qstat
$ cat log/7954230.pbs101.OU  cat your job output.
Expected output:
6 March 2024 266 March 2024 27
Exercise 10: Singularity and Miniforge
Use the sample job submission script/files available in /app/workshops/introductory or create your own
job submission script to submit the job
10.1 Submit Interactive singularity job
❖ Job submission script: singularity-tensorflow.pbs
❖ Command to submit the job:
Commands to use:
$ cd Training/workshop/4-singularity/
$ qsub -I -l select=1:ngpus=1:mem=110g -l walltime=01:00:00 -P <project-id> -q
normal  Update project-id
$ module load singularity
$ export SINGULARITY_BIND="/scratch:/scratch,/home/project:/data/projects"
$ image=/app/apps/containers/tensorflow/tensorflow-nvidia-22.04-tf2-py3.sif
$ singularity exec --nv $image python hello.py
$ exit
Expected output:
10.2 Submit Interactive singularity job
❖ Job submission script: singularity-tensorflow.pbs
❖ Command to submit the job:
Commands to use:
$ cd Training/workshop/4-singularity/
$ pwd
$ ls
$ vi singularity-tensorflow.pbs  Update the job script with your project-id
$ Cat singularity-tensorflow.pbs
$ qsub singularity-tensorflow.pbs
6 March 2024 28
$ qstat
$ cat log/7954322.pbs101.OU  cat your job output.
Expected output:
10.3 Miniforge
```
Reference:
```
```
Follow the user guide from https://help.nscc.sg -> User Guides -> NSCC Job Scheduler (PBS Pro) Quick
```
Start Guide
Useful Links
Corporate Info – web portal https://nscc.sg
NSCC HPC web portal https://help.nscc.sg
NSCC support email help@nscc.sg
NSCC Project registration portal https://projects.nscc.sg