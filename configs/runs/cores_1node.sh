#!/usr/bin/env bash
set -euo pipefail

RUNSET_ID="cores_1node"
QUEUE="normal"
WALLTIME="01:00:00"
MEM="110gb"

# Each case is a pipe-delimited record:
# run_id|select|ncpus|mpiprocs|ompthreads|ngpus
CASES=(
  "n1_mpi1_omp1|1|1|1|1|0"
  "n1_mpi2_omp1|1|2|2|1|0"
  "n1_mpi4_omp1|1|4|4|1|0"
  "n1_mpi8_omp1|1|8|8|1|0"
  "n1_mpi16_omp1|1|16|16|1|0"
  "n1_mpi32_omp1|1|32|32|1|0"
)


