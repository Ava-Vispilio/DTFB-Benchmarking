#!/usr/bin/env bash
set -euo pipefail

RUNSET_ID="nodes_mpi"
QUEUE="normal"
WALLTIME="02:00:00"
MEM="110gb"

CASES=(
  "n2_mpi64_omp1|2|64|64|1|0"
  "n4_mpi64_omp1|4|64|64|1|0"
  "n8_mpi64_omp1|8|64|64|1|0"
)


