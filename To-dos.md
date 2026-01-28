Status:
84% passed (343/406), 63 failed. Failures show "Not run" with no detailed errors, suggesting they fail during setup or require optional features.

Patterns in the failures:
- Hybrid functional tests (hybrid/cluster, hybrid/periodic)
- mDFTB tests (all)
- Dispersion tests (dftd3, dftd4)
- Solvation tests (gbsa)
- Spin-orbit tests
- Some GaAs tests

These likely require optional features or libraries not enabled in this build.

We work on Intel OneAPI first (DFTB+ = 24.1, GFortran >= 13, OneAPI >=2024, NAG >=7.2, CMake >= 3.16)
Add ELSI to the GCC build
Add the param and input files to the repo and find a way to run them
Build ScalaPACK and get it working with DFTB+