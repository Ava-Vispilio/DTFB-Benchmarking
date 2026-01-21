

National Supercomputing Centre (NSCC) Singapore
A national research infrastructure providing supercomputing solutions for all
By NSCC Singapore Managed Services Team
## ASPIRE2A ADVANCED
## WORKSHOP
## Optimisation Techniques

ASPIRE2A Advanced Workshop -Optimisation Techniques
1 Slides and hands-on examples are available from the git repository
git clone /app/workshop/optimisation
- The PBS reservation queues for the workshop
R10278970    1 CPU nodes + 1 GPU nodes
- Project code for use in the workshop
## Personal
- Ensure a valid username has been added to the project
Valid period : from 2:00pm to 18:00pm  14/05/2025
Note: Queue name and Valid period will be set up on the day of training.
## 2

## Contents
1.Introduction
2.General Overview of OptimisationTechniques
3.ASPIRE2A Hardware Overview
4.CPU Binding and Affinity
5.Compiler Optimisation
6.MPI Optimisation
7.I/O and Parallel File System
8.Optimisation Techniques of Python
## 3

## 1. Introduction
## 4

## Examples
## Examples
•GPU utilisation during Deep Learning & and Python Profiling
▪Capture the GPU utilisation from Nvidia-SMI during run on GPU node
•Stream (Memory bandwidth) for CPU affinity
▪What is the best result you can get?
## Additional Examples
•Effect of cache on performance
•Use Matrix-vector multiplication to study cache effects
▪miniFE(CPU performance)
▪How is performance affected by size of the data set
▪Try different compilation & runtime options
•What’s the highest single node performance you can achieve?
▪Quantum Espresso
▪Study effect of compiler & optimisationon numerical results
•Try different libraries, thread/process decompositions, etc
•Allinea/Linaroperformance report example
•Nvidia CUDA examples
Get the examples with
the following command
git clone /app/workshop/optimisation
## 5

## Key Takeaways
•Flops are free and data movement is expensive.
•There are lots of tools available to gather performance data, use them.
•There are numerous parameters for optimisation. Focus on easy wins
and have a plan.
## 6

## 2. General Overviewof
## Optimisation Techniques
## 7

## Topics
## General Overview
•Optimisation process: guidance, tips and tricks
•How to decide on which optimisationtechniques to focus on
•Performance characteristics of the EPYC architecture
## 8

The Importance of Optimisation
•Two basic driving forces: Speed and Size
•Faster turnaround
▪Increase performance for a particular problem
▪Strong scaling: Amdahl’s Law
•Increase size
▪Use a large system or finer mesh
▪Weak scaling: Gustafson’s Law
•Goal is to explore new capability
•Different priorities for the two approaches
## 9

What are the Options Available?
•Build Options
▪Vendor and version of: Compiler, MPI, BLAS, FFTW, HDF5, MKL and other
dependencies
▪Compiler options -O2, -O3
▪Application configuration options
•Runtime Options
▪Number of nodes, distribution of cores between processes and threads
▪Environment and system tuning settings
•Source Code Modification
▪Hand-tuning of critical sections
▪Autotuning technology
▪Algorithm redesign
Endless number
of permutations
## Code Developer
## 10

Tools and Libraries
## 11

Which Optimisation Techniques to Focus On?
•Decide on the Strategy
▪Which order to attack I/O, MPI, Compute
▪If application scales well then compute bottleneck at
small core counts may disappear at high core counts
•Top-Down vs Bottom Up
▪Profiling-driven approach gives low-level information
about computational kernels, it may be better to look
at high-level algorithm choices and start there
▪Arithmetic intensity of application can inform where to
optimise
## 12

Workflow: ARM-FORGE
https://developer.arm.com/documentation/101136/22-1-3
## 13

Hierarchy of Parallelism
## 14

Optimisation Processes -Tips and Tricks
•Aggressive optimisationexposes new bugs
•Good coverage of test suites
•Use code quality tools, AI code helper
Have a
functional code
•To investigate scaling with problem size and core count
•Weak scaling vs Strong scaling
•Small benchmarks for fast turnaround of parameter
sweeps
•Multiple data points help to elucidate trends
## Benchmark
data sets
•Clear path and goal
•When to stop
## Tips
## 15

## 2.1 Optimisation Techniques
Examples of Application Scaling
## 16

Example of Application Scaling
Hypothetical application which calls 3 functions, spending most time in “B”
Which function should we try to tune to improve performance?
## 17

Example of Application Scaling
Function B was serial, itshould be running in parallel:
Whichis the nextfunction should we actually be trying to optimize?
“B”scales very efficiently,
“A”and “C”doesn’t scale at all.
## 18

Example of Application Scaling
But in production,when increase the problem size:
void A() {...}
void B(N, iproc, nproc) { for (i=iproc;i<N;i=i+nproc) {...} }
void C(N) {for (i=0;i<factorial(N);i=i+1) {...} }
## 19

## Application Scaling
Understand how
your application
performs with
different data sets
on different
compute resources
## 1
Try different
scaling tests to
gather information
## 2
Don’t rely on the
behavior being
similar to that on a
different machine
## 3
## 20

Areas of Investigation
Critical performance factors are different for different applications.
Some possible areas of investigation:
▪Molecular Dynamics
▪Ratio of Threads: Processors : GPU
▪Scalability vs Number of particles
▪Plane-wave DFT & Quantum Chemistry
▪Good BLAS libraries and compilers
## ▪CFD
▪Choice of solver and pre-conditioner
▪MPI Allreduceperformance (try different MPI libraries & algorithms)
▪Weather
▪Like CFD with additional focus on I/O performance
▪Bioinformatics
▪Workflow management and I/O management
▪Keep data in RAMDISK during processing (/dev/shm), clean the data on time.
▪Deep Learning on GPU
▪Framework with optimized low-level libraries: cuDNN, NCCL, etc. (miniforge3, Singularity
image, etc)
▪Check input pipeline isn’t bottleneck
▪Keep GPU utilization high
This list is not exhaustive and will be dependent on specifics of application, algorithm, data set, etc.
## 21

- ASPIRE2A HardwareOverview
## 22

Historical Trends in Processor Design
Single thread performance
dependent on frequency
which is limited by power
This is results in more cores
and more vectorization
source: https://www.researchgate.net/figure/50-year-trends-in-microprocessors-Source-Karl-Rupp-https-githubcom-karlrupp_fig2_368754141
## 23

ASPIRE2A Compute Nodes: “normal”Queue -@pbs101
•768 nodes
•Dual Sockets AMD EPYC 7713
•128 CPU cores per node
•512 GB DDR4 ECC RAM per
node
•1x100G HSN (Slingshot)
•PBS queue (normal)
●64 nodes
●Single socket AMD EPYC 7713
●64 CPU cores per node
●512 GB DDR4 ECC RAM per
node
●4xNVIDIA A100  (40 GB)
●2x100Gb HSN (Slingshot)
●PBS queue (normal)
## CPUNODESGPUNODES
## 24

ASPIRE2A Compute Nodes: “ai”Queue -@pbs102
●12 nodes
●HPE Apollo 6500 XL645d
●Single socket AMD EPYC
## 7713
●64 core per node
●512 GB memory
●11TB NVMemounted at /raid
## $TMPDIR
●4xNVIDIA A100 (40GB)
●2x100Gb HSN (Slingshot)
●6 nodes
●HPE Apollo 6500 XL675d
●Dual-sockets AMD EPYC
## 7713
●128 core per node
●1024 GB memory
●14TB NVMemounted at /raid
## $TMPDIR
●8xNVIDIA A100 (40GB)
●2x100Gb HSN (Slingshot)
## AINODESAINODES
## 25

Memory, NUMA and Caches
## EPYC 7713
## 26

CPU Information-qsub -I -l select=1:ncpus=4
## $ /app/apps/oneapi/2022.2.0/mpi/2021.6.0/bin/cpuinfo
Intel(R) processor family information utility, Version 2021.6 Build 20220227 (id: 28877f3f32)
Copyright (C) 2005-2022 Intel Corporation.  All rights reserved.
=====  Processor composition  =====
Processor name    : AMD EPYC 7713 64-Core Processor
## Packages(sockets) : 1
## Cores             : 4
Processors(CPUs)  : 8
Cores per package : 4
Threads per core  : 2
=====  Processor identification  =====
## Processor       Thread Id.      Core Id.        Package Id.
## 100             0               36              1
## 103             0               39              1
## 104             0               40              1
## 105             0               41              1
## 228             1               36              1
## 231             1               39              1
## 232             1               40              1
## 233             1               41              1
=====  Placement on packages  =====
## Package Id.     Core Id.        Processors
## 1               36,39,40,41             (100,228)(103,231)(104,232)(105,233)
=====  Cache sharing  =====
## Cache   Size            Processors
## L1      32  KB          (100,228)(103,231)(104,232)(105,233)
## L2      512 KB          (100,228)(103,231)(104,232)(105,233)
## L3      32  MB          (100,103,104,105,228,231,232,233)
CPU model
All threads Id. With
Hyperthreading enabled.
On with Sockets
## Caches
## 27

CPU Information -qsub -I -l select=1:ngpus=4
nvidia-smi topo -m
GPU0 GPU1 GPU2 GPU3 NIC0 NIC1 CPU Affinity NUMA Affinity GPU NUMA ID
## GPU0 X NV4 NV4NV4SYS PHB 48-63,112-127 3 N/A
## GPU1NV4 X NV4 NV4SYS SYS32-47,96-111 2N/A
## GPU2 NV4 NV4X NV4 SYS SYS16-31,80-95 1 N/A
## GPU3 NV4 NV4NV4X PHB SYS 0-15,64-79 0 N/A
## NIC0 SYS SYSSYSPHB X SYS
## NIC1 PHB SYS SYSSYSSYSX
GA100 Full GPU with 120 SMs
source: https://images.nvidia.com/aem-dam/en-zz/Solutions/data-center/nvidia-ampere-architecture-whitepaper.pdf
CUDA_VISIBLE_DEVICES=1 numactl-C 32-47 --membind=2 cuda_apps
## 28

- CPU Binding andAffinity
## 29

CPU Binding and Affinity
•CPU Binding
▪The process of assigning a task or process to a specific CPU core.
▪Ensures that a task runs exclusively on a designated core, preventing context
switching and overhead.
•CPU Affinity
▪The preference for a task to run on a particular CPU core or set of cores.
▪Allows for more granular control over task placement and can improve
performance in certain scenarios.
## 30

Why CPU Binding and Affinity
•Optimal Resource Utilization
•Ensures that tasks are assigned to specific CPU cores, preventing unnecessary
context switching and overhead.
•Maximizes the utilization of each core for efficient computation.
•Improved Performance
•Reduces latency by minimizing data movement between cores and memory.
•Enhances cache coherence and locality, leading to faster execution.
•Scalability
•Facilitates the efficient scaling of HPC applications across multiple nodes.
•Ensures that tasks are distributed evenly among available cores.
•Reduced Interference
•Minimizes the impact of other processes or operating system tasks on HPC
workloads.
•Provides a more stable and predictable execution environment.
## 31

OMP_PROC_BIND=close
## 32

OMP_PROC_BIND=close
$ OMP_NUM_THREADS=4 OMP_PROC_BIND=close ./main | sort
Hello from rank 0, thread 0, on x1001c0s0b1n0. (core affinity = 121)
Hello from rank 0, thread 1, on x1001c0s0b1n0. (core affinity = 249)
Hello from rank 0, thread 2, on x1001c0s0b1n0. (core affinity = 122)
Hello from rank 0, thread 3, on x1001c0s0b1n0. (core affinity = 250)
## Source: /app/workshop/optimisation/e_affinity
## 33

OMP_PROC_BIND=spread
## 34

OMP_PROC_BIND=spread
$ OMP_NUM_THREADS=4 OMP_PROC_BIND=spread ./main | sort
Hello from rank 0, thread 0, on x1001c0s0b1n0. (core affinity = 121)
Hello from rank 0, thread 1, on x1001c0s0b1n0. (core affinity = 122)
Hello from rank 0, thread 2, on x1001c0s0b1n0. (core affinity = 123)
Hello from rank 0, thread 3, on x1001c0s0b1n0. (core affinity = 126)
## Source: /app/workshop/optimisation/e_affinity
## 35

## CRAY MPICH AND OPENMP
## OMP_NUM_THRADS=3
mpirun -np 6--cpu-bind depth -d 2 app
mpirun -np 4--cpu-bind depth -d 3 app
## 36

## 5. Compiler Optimisation
## 37

Cray PrgEnv
The programing environment of ASPIRE2A
## Programing
## Environment
CompilersVersionWraper
## (driver)
PrgEnv-cray (default)clang,clang++,ftn11.0.1LLVM-basedcc,CC,ftn
PrgEnv-intelicx,icpx,ifx (ifort)2024.0.2
## (2021.11.1)
LLVM-based
PrgEnv-aoccclang,clang++,flang13.0.0LLVM-based
PrgEnv-gnugcc,g++,gfortran11.2.0
PrgEnv-nvhpcnvc,nvc++,nvfortran22.3-0(PGI)
craype-accel-nvidia80nvcc11.6.2nvcc
cray-mpich (default)Cc,CC,ftn8.1.15cc,CC,ftn
## 38

What are cc, CC, ftn
•PrgEnvmodules provide wrappers (cc, CC, ftn) for both CCE and third-
party compiler drivers.
•These wrappers call the correct compiler with appropriate options to build
and link applications with relevant libraries as required by loaded modules.
•Note that only dynamic linking is supported.
•These wrappers replace direct calls to compiler drivers in Makefilesand
build scripts.
## 39

Compilers Flags and Link Libraries
module swap PrgEnv-cray PrgEnv-intel
cc --cray-print-opts=cflags
-I/opt/cray/pe/mpich/8.1.15/ofi/intel/19.0/include -
## I/opt/cray/pe/dsmml/0.2.2/dsmml/include
cc --cray-print-opts=libs
-L/opt/cray/pe/mpich/8.1.15/ofi/intel/19.0/lib -
L/opt/cray/pe/dsmml/0.2.2/dsmml/lib -Wl,--as-needed,-lmpi_intel,--no-
as-needed -Wl,--as-needed,-ldsmml,--no-as-needed
## Try:
cc --cray-print-opts=all
## 40

## General Optimisation Flags
## Feature/
## Option
Cray (CCE)GNUAOCCINTELNVHPC
modulefilePrgEnv-crayPrgEnv-gnuPrgEnv-aoccPrgEnv-intelPrgEnv-nvhpc
## Listing-fsave-
loopmark(c/c++)
## -hlist=a (ftn)
## -fdump-tree-
all
-Rpass=*
-Rpass-missed=*
-Rpass-analysis=*
-Minfo=all
-Minfo=loop
## Vectorizati
on
By default at -O1
and above
By default at -
O3 or using -
ftree-vectorize
By default at -O2
and above
By default
at -O2 and
above
By default at -
O2 and above
OpenMP-fopenmp (c/c++)
## -homp (ftn)
## -fopenmp-fopenmp-qopenmp-mp
## Variable
sizes (ftn)
-s real64
-s integer64
## -freal-4-real-8
## -finteger-4-
integer-8
## -fdefault-real-8
## -fdefault-integer-8
## -real-size 8
## -integer-
size 8
## -i2,4,8
## -r4,8
## 41

General HPE Cray Fortran Compiler Flags
## Compiler
## Option
MeaningNotes
## -O2
“safe”optimisation flags
enabled by default
-O3aggressive optimisation
-O ipaNcontrol inline expansionN=0-5, default N=3
-hlist=acreates a listing file with all optimisation info
-hlist=mproduces a listing file with all optimisation
info
-hompRecognize OpenMP directivesdisabled by default
-hthreadNControl the compilation and optimisation of
OpenMP directives
N=0-3, default=2,
0=off, 3=most aggressive
optimisation
## 42

Vectorisation (SIMD)
intel: -march=core-avx2 -mtune=core-avx2
gcc:   -mavx2 -march=znver3
## 43

Hybrid MPI/OpenMP Warning
•If using hybrid MPI/OpenMP then be careful withOMP_PROC_BIND
•MPI must also be using process binding to allocate processes to specific groups of cores
•Otherwise, all processes will bind threads to the same cores
•Cray-MPICH is the official supported MPICH compiler.
•export OMP_NUM_THREADS=<openmp_threads>
mpirun-np <mpiprocs> --cpu-bind depth -d <openmp_threads> app <args>
## 44

## Job Scheduler Resource Request
You can request the number of OpenMP threads with the ompthreadsPBS resource
request:
#PBS -l select=1:ncpus=32:ompthreads=8:mem=110gb
echo $OMP_NUM_THRADS
## 8
This will be the default value of the ncpusPBS resource request:
#PBS -l select=1:ncpus=32
echo $OMP_NUM_THREADS
## 32
For, GPU job script, the $OMP_NUM_THREADSis setup by hook of PBSpro, (=ncpus)
#PBS -l select=1:ngpus=1
## 45

Beware of Oversubscription
It’s quite easy to run too many OpenMP threads by accident.
For example, this job script:
#PBS -l select=1:ncpus=32:mpiprocs=32:mem=110gb
mpirun-np 32 ./a.out
And a.outis linked with OpenMP then it will run 1024 OpenMP threads (32x32).
If in doubt you should always specify mpiprocsand ompthreadsin your resource
request, or set OMP_NUM_THREADS
#PBS -l
select=1:ncpus=32:mpiprocs=32:ompthreads=1:mem=110gb
or
export OMP_NUM_THREADS=1
mpirun-np 32 --cpu-bind depth -d 1./a.out
## 46

## Optimised Libraries
Math librariesModule fileDescription
## Dense Linear Algebra
mkloneMKL (Intel Math Kernel Library)
cray-libsci (default)
a collection of numerical routines tuned for
performance on Cray systems
ScaLAPACKscalapackScalable Linear Algabra Package
## FFTW
fftwfftw
cray-fftwcray fftw
mklIntel MKL
## Sparse Linear
## Algebra
petscPETSc
General math
functionality
gslGSL
boostBoost
## I/O
hdf5hdf5
cray-hdf5cray hdf5 optimised libraries
cray-netcdf
cray-netcdf-hdf5parallel
GPUcuda,nvhpccuBLAS, cuFFT, cuDNN
## 47

MKL: Advisor
Generate the MKL cflags and libs from MKL Advisor webpage.
## 48

- MPI Optimisation
## 49

High-Speed Network
ASPIRE2Ahas a low latency, high bandwidth network. (Slingshot)
RDMA (Remote Direct Memory Access) allows a process to directly access
the memory on another host without involving operating system or processes
on remote host.
MPI processes
are launched
by PALS.
PALS -The Parallel Application Launch
Service (PALS) is a containerized
application that provides a REST API for
application launch.
## 50

Slingshot -High Speed Network
HPE Cray MPICH can use two different
low-level protocols to transfer data
across the network.
OFI (default)
## •cray-mpich
## •craype-network-ofi
## UCX
## •cray-mpich-ucx
## •craype-network-ucx
module swap cray-mpichcray-mpich-ucx
module swap craype-network-oficraype-network-ucx
## 51

CRAY MPICH SoftwareStack on EX Systems
## PMI/PALS
## 52

## OFI VS UCX
source: https://www.archer2.ac.uk/training/courses/220817-routing-protocols-vt/ARCHER2_OFI-UCX-CUG2022_web.pdf
## VASP
## GROMACS
## 53

MPI MessageProtocols
Message Consists of Envelope and Data
•Envelope contains tag, communicator, length, source information, plus
implementation private data
Eager (Short)
•Message is sent, based on the expectation that the destination can store;
if no matching receive exists, the receiver must buffer or drop
Segmentation And Reassembly (SAR)
•Longer message is broken into chunks that are each like Eager messages
Rendezvous (Long)
•Only the envelope is sent (and buffered) immediately
•Message is not sent until the destination posts a receive
•A long message is any message longer than a short message
For more information see the intro_mpi man page
## 54

NewMPI EnvironmentVariables for EX
The default netmod that Cray-MPICH uses is libfabric (OFI)
•Libfabric is an open-source project as a subgroup of the OpenFabrics Alliance
Cray-MPICH explicitly sets default values for a subset of new OFI environment
variables
•These variables generally start with “FI_” or “MPICH_OFI_”
•See the intro_mpi man page for additional information
Cray MPICH is the primary source of GPU support in the Cray Programming
## Environment
•Both NVIDIA and AMD GPUs are supported by Cray MPICH as of the current
release
•Several environment variables are used to manage GPUs in MPI operations
▪These variables generally start with “MPICH_GPU_”
## 55

LIBFABRIC OFI Environment Variables
Environment VariablePurposes
## FI_OFI_RXM_BUFFER_SIZE
Specifies the transmit buffer size/inject size in bytes. Messages of size less
than this will be transmitted via an eager protocol and those above will be
transmitted via a rendezvous or SAR (Segmentation And Reassembly)
protocol. Default is 16,364
## FI_OFI_RXM_SAR_LIMIT
Messages of size greater than this (in bytes) are transmitted via rendezvous
protocol. Setting this to 0 disables SAR protocol entirely. Default is 262,144
## MPICH_OFI_USE_PROVIDER
Specifies the libfabric provider to use.
Slingshot 10 (with Mellanox 100Gb Ethernet NICs) default: "verbs;ofi_rxm"
## MPICH_OFI_VERBOSE
If set, displays verbose output during MPI_Init to verify which libfabric provider
was selected, along with the name and address of the NIC(s) being used.
Not set by default
## FI_VERBS_MIN_RNR_TIMER
This sets the minimum backoff time used when the Mellanox NICs experience
congestion. Allowable values are 0-31, with higher values corresponding to
longer backoffs. recommended value for Slingshot10 is 3 to 6 -Default is 6
## 56

LIBFABRIC OFI EnvironmentVariablesfor Multi-Injection
## Environment Variable
## Default
## Value
## Purposes
## MPICH_OFI_NIC_POLICY
## Block
Selects the rank-to-NIC assignment policy used by Cray
MPI. Options: BLOCK, ROUND-ROBIN, NUMA, GPU, and
## USER
## MPICH_OFI_NIC_MAPPING
## Unset
Specifies the precise rank-to-NIC mapping to use on each
node.
## MPICH_OFI_NIC_VERBOSE
## 0
If set to 1, verbose information pertaining to NIC selection
is printed at the start of the job.
MPICH_OFI_NUM_NICs
## Unset
Specifies the number of NICs the job can use on a per-
node basis. By default, when multiple NICs per node are
available, MPI attempts to use them all.
## MPICH_OFI_RMA_STARTUP_CONNECT
## 0
If set to 1, Cray MPI will create connections between all
ranks on each node in the job during MPI_Init. May be
beneficial for RMA jobs requiring an all-to-all on-node
communication pattern.
## MPICH_OFI_SKIP_NIC_SYMMETRY_TEST
## 0
If set to 1, the check for NIC symmetry (i.e. make sure all
nodesin the job have the same number of Nics available)
is performedduring MPI_Init will be bypassed.
## 57

MPI EnvironmentVariables for GPU Support
Environment VariableDef.Purposes
## MPICH_GPU_SUPPORT_ENABLED
## 0
Enables a parallel application to performs MPI operations with
communication buffers that are on GPU-attached memory regions.
## MPICH_GPU_IPC_THRESHOLD
## 8192
Intra-node GPU-GPU transfers with payloads ofsize greaterthan
or equal to this value will use the IPC capability. Transferswith
smaller payloads will use CPU-attached shared memory regions.
## MPOICH_GPU_NO_ASYNC_MEMCPY
## 0
Enables optimisationfor intra-node MPI transfers involving CPU
and GPU buffers. If set to 1, it reverts to using blocking memcpy
operations for intra-node MPI transfers involving CPU and GPU
buffers.
## MPICH_GPU_COLL_STAGING_ARE
## A_OPT
## 1
Enables experimental optimisationfor collective operations (e.g.
MPI_ALLreduce) involving GPU-GPU transfers with large payloads
## MPICH_OPTIMIZED_MEMCPY
## 1
- Use the system (glibc) version of memcpy.
- Use an optimized version of memcpyif one is available for the
processor being used.
- Use a highly optimized version of memcpythat provides better
performance in some areas but may have performance
regressions in other areas.
## 58

Cray MPICH Environment Variables for Debugging
•Useful MPICH verbose environment variables to monitor settings:
## MPICH_OFI_NIC_VERBOSE=0,1
## MPICH_OFI_VERBOSE=0,1
## MPICH_UCX_VERBOSE=0,1
## MPICH_MEMORY_REPORT=0{0,1,2,3}
•How to get help?
man mpi
intro_mpi
## 59

## Asynchronous Progress Engine
Asynchronous Progress Engine is used to improve
communication/computation overlap
•Each MPI rank starts a “helper thread” during MPI_Init
•Helper threads progress the MPI state engine while the application is
computing
•Only inter-node messages that use Rendezvous path are progressed
•Both Send-side and Receive-side are progressed
•Performance improvements of 10% or more have been experienced with
some applications
•Only effective if a core per node is reserved for the helper threads
Enabled with the MPICH_ASYNC_PROGRESS environment variable
•Setting this variable will automatically increase the thread-safety level to
## MPI_THREAD_MULTIPLE
•See intro_mpi man page for detail
## 60

MPI Tips and Tricks
•Perform a scaling study to see how performance varies with
number of cores
•Use profiling tools to check
▪Ratio of communication/computation
▪Identify load imbalance and bottlenecks
▪Amount of point-to-point & collective communication
•Try to avoid
▪Ommunication inside inner compute loops
▪Consider OpenMP instead
▪Collective operations, especially Alltoall
▪Algorithm choice / design
## 61

- I/O and Parallel File System
## 62

I/O: General Themes
Disk I/O is the slowest component of any system
I/O tends to scale poorly
Optimized libraries can improve performance
MPI/IO, HDF5, NetCDF
Reading/Writing text files are normally slower than using binary files
Overhead in datatype conversion
## 63

I/O: General Themes
Avoid large numbers of small files
Metadata operations on parallel filesystems are slow
Avoid large numbers of files in a directory
Locking of directories during file open
1,000 should be Ok, more than 10,000 is bad
On Lustre(/scratch) avoid “ls -l” in directories with many files
To contact all metadata & object storage servers for all files
## 64

Parallel I/O Schemes
## 65

Data Management –Best Practices
•Install applications in Home or Project directory.
•Share files through Project directory.
•Regular housekeeping in HOME, PROJECTand SCRATCHdirectories.
•Use SCRATCHdirectory for temporary files.
•Move essential files to project directory after job completion. Note: Files in scratch
are subjected to purging.
•Using striping for large files on scratch directory by using ‘lfssetstripe’ command.
•Execute data transfer on compute nodes for optimal performance.
## 66

## 8. Optimisation Techniques
of Python
## 67

## Python Performance
Python is very useful
•Quick and easy to use
•Lots of packages available
Performance can be problematic if user is not careful
•Interpreted language with dynamic types
•Global interpreter Lock (GIL)
▪Mutex to allow thread-safe memory management
▪Poor multithreaded performance
Performance can be good if user is careful:
•Heavy computation done in libraries rather than native python
•Optimised numerical packages
▪Numpy, Scipy build with optimized multi-threaded BLAS/LAPACK
▪pandas (dash, Polars), Numpy (CuPy) and pytorch ...
▪Python interfaces to HPC libraries: mpi4py, h5py
Profiling python can be a non-trivial exercise
•cProfile
•Arm-forge (Linaro-forge)
•Nsight
## 68

## Summary
## 69

## Key Takeaways
•Flops are free, data movement is expensive
▪Expose as much task parallelism as possible
▪keep all the cores busy
▪Expose as much loop-level parallelism as possible
▪keep the vector instructions busy
▪Data movement is expensive
•There are lots of tools available to gather performance data, use
them
▪Arm-forge, gdb4hpc
▪Use data to gain insight into your applications
•There are infinite parameters to modify: focus on easy wins and have
a plan
## 70

## Get Help
From man
▪man intro_openmp
▪man mpi
▪man crayftn
▪man craycc
From web page
## •https://h41374.www4.it.hpe.com/docs/cce/index.html
## •https://docs.linaroforge.com/23.1.2/html/forge/index.html
From email
## •help@nscc.sg
## 71

## Contact Us
## Contact Us
Website   : https://nscc.sg
Email       : help@nscc.sg
Helpdesk : https://keris.service-now.com/csm
## Contact    : +65 6645 3412
## Self Service
Portal       : https://help.nscc.sg/
## 72

Email : help@nscc.sg
## 73

## Thank
## You
## NSCC.SG
## 74