## Variant definitions

Each file in this directory defines a **build variant** (compiler + flags + libraries + GPU on/off).

The PBS build job expects a `VARIANT_ID` (e.g. `intel_O3_mkl_cpu`) and will load:

- `configs/variants/<VARIANT_ID>.yml`

### Naming convention

Use:

- `<compiler>_<opt>_<libs>_<cpu|gpu>`

Examples:

- `cray_O2_libsci_cpu`
- `gnu_O3_fftw_cpu`
- `intel_O3_mkl_cpu`
- `nvhpc_O3_cuda_gpu`


