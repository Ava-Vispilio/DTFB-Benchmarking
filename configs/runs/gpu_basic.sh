#!/usr/bin/env bash
set -euo pipefail

RUNSET_ID="gpu_basic"
QUEUE="normal"
WALLTIME="01:00:00"
MEM="110gb"

CASES=(
  "n1_gpu1|1|16|1|16|1"
  "n1_gpu4|1|64|4|16|4"
)


