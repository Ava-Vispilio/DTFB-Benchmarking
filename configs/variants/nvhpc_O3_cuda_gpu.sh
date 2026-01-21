#!/usr/bin/env bash
set -euo pipefail

VARIANT_ID="nvhpc_O3_cuda_gpu"

MODULE_SWAPS=("PrgEnv-nvhpc")
MODULE_LOADS=("craype-accel-nvidia80")
MODULE_UNLOADS=("cray-libsci")

CFLAGS="-O3"
CXXFLAGS="-O3"
FCFLAGS="-O3"

# You will likely need to add the DFTB+ GPU/CUDA-related CMake options here.
CMAKE_ARGS=(
  "-DCMAKE_BUILD_TYPE=Release"
)

MAKE_JOBS="${MAKE_JOBS:-16}"


