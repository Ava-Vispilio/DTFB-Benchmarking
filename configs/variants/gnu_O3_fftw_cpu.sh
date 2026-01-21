#!/usr/bin/env bash
set -euo pipefail

VARIANT_ID="gnu_O3_fftw_cpu"

MODULE_SWAPS=("PrgEnv-gnu")
MODULE_LOADS=("fftw")
MODULE_UNLOADS=("cray-libsci")

CFLAGS="-O3"
CXXFLAGS="-O3"
FCFLAGS="-O3"

CMAKE_ARGS=(
  "-DCMAKE_BUILD_TYPE=Release"
)

MAKE_JOBS="${MAKE_JOBS:-16}"


