#!/usr/bin/env bash
set -euo pipefail

VARIANT_ID="cray_O2_libsci_cpu"

MODULE_SWAPS=("PrgEnv-cray")
MODULE_LOADS=("cray-libsci" "cray-fftw")
MODULE_UNLOADS=()

# Build flags (extend as needed)
CFLAGS="-O2"
CXXFLAGS="-O2"
FCFLAGS="-O2"

# CMake configuration (common defaults; extend per site)
CMAKE_ARGS=(
  "-DCMAKE_BUILD_TYPE=Release"
)

MAKE_JOBS="${MAKE_JOBS:-16}"


