#!/usr/bin/env bash
set -euo pipefail

VARIANT_ID="intel_O3_mkl_cpu"

MODULE_SWAPS=("PrgEnv-intel")
MODULE_LOADS=("mkl")
MODULE_UNLOADS=("cray-libsci")

CFLAGS="-O3"
CXXFLAGS="-O3"
FCFLAGS="-O3"

CMAKE_ARGS=(
  "-DCMAKE_BUILD_TYPE=Release"
)

MAKE_JOBS="${MAKE_JOBS:-16}"


