## How to run (ASPIRE2A / PBS Pro)

This repo is designed to satisfy the requirements in [`Reference/Requirements.md`](../Reference/Requirements.md).

### Prerequisites you must decide (once)

- **DFTB+ source**: set `DFTBPLUS_GIT_URL` and `DFTBPLUS_REF` (tag/commit/branch) when submitting build jobs.
- **Project/accounting**: set `PROJECT_ID` (PBS `-P`), or edit the PBS scripts to hardcode it.
- **Benchmark case**: create a case under `tests/inputs/<case>/` and select it via `BENCH_CASE=<case>` when submitting run jobs.

### One-time repo setup

- **Create immutable benchmark inputs**
  - Put all test inputs under `tests/inputs/`.
  - Never edit files under `tests/inputs/`. The run scripts copy them into a per-run folder.

- **Define build variants**
  - Add one YAML file per build variant under `configs/variants/`.
  - A variant defines compiler, flags, libraries, and GPU on/off.

- **Define run sweeps**
  - Add one YAML file per sweep under `configs/runs/`.
  - A run sweep defines node/core scaling parameters (select, ncpus, mpiprocs, ompthreads, ngpus).

### Where things are created on ASPIRE2A

- **Parent folder**: `~/Desktop/DTFB-Bench/` (fallback: `~/DTFB-Bench/`)
- **Builds**: `~/Desktop/DTFB-Bench/builds/<variant_id>/`
- **Runs**: `~/Desktop/DTFB-Bench/runs/<variant_id>/<run_id>/`

### Build (one variant)

1. SSH to ASPIRE2A.
2. Clone this repo on ASPIRE2A (or use your existing clone).
3. Submit a build job:

```bash
qsub -v PROJECT_ID=personal-<userid>,VARIANT_ID=intel_O3_mkl_cpu,DFTBPLUS_GIT_URL=<git_url>,DFTBPLUS_REF=<ref> pbs/build/build_variant.pbs
```

Outputs are written under `~/Desktop/DTFB-Bench/builds/<variant_id>/` and the PBS stdout/stderr file.

### Run benchmarks (one variant + one run sweep)

Submit a run job (single run or array). Example:

```bash
qsub -v PROJECT_ID=personal-<userid>,VARIANT_ID=intel_O3_mkl_cpu,RUNSET=cores_1node,BENCH_CASE=example_case pbs/run/run_benchmark.pbs
```

For a sweep using a PBS job array (runs one case per subjob):

```bash
qsub -J 1-6 -v PROJECT_ID=personal-<userid>,VARIANT_ID=intel_O3_mkl_cpu,RUNSET=cores_1node,BENCH_CASE=example_case pbs/run/run_benchmark.pbs
```

### Collect results back into repo

After the run job completes, copy run artifacts back into the repo under `results/`:

```bash
./scripts/collect_results.sh --variant intel_O3_mkl_cpu --runset cores_1node
```

### Summarize

Generate a CSV summary (accumulates all results found in `results/`):

```bash
python3 scripts/summarize.py --results-dir results --out results/summary.csv
```

### Editing variants and runsets

- **Variants**: the PBS scripts consume `configs/variants/<VARIANT_ID>.sh` (bash-sourcable).
  - YAML files in `configs/variants/*.yml` are optional reference copies.
- **Runsets**: the PBS scripts consume `configs/runs/<RUNSET>.sh` (bash-sourcable).
  - YAML files in `configs/runs/*.yml` are optional reference copies.

### Notes / best practices

- Always rebuild from a clean checkout (the build job enforces this).
- Keep the same input files for all variants.
- Always specify `select`, `ncpus`, `mpiprocs`, `ompthreads`, `ngpus` (where applicable), `mem`, and `walltime` in PBS scripts.
- For hybrid MPI/OpenMP runs, use process+thread binding (`mpirun --cpu-bind depth -d <ompthreads>`) and set `OMP_PROC_BIND`.


