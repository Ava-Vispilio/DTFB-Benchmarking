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