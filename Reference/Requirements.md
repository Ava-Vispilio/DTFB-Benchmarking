What do I need?
- A Git Repo containing pbs build script(s)
- Git Repo also contains references for iteration
- Git Repo also contains the test files needed

Goal:
- We run the various pbs scripts in the repo to build a new build of DFTB+ from scratch (in its own folder) 
- The new build is then evaluated using the test files provided (in the Git repo) to evaluate performance differences
- Finally, the log file is copied back into the Git Repo too

What do we plan to benchmark?
- Scaling across cores
- Scaling across compilers (and flags)
- Scaling using different libraries
- Scaling with and without GPU acceleration
- Scaling across nodes (OpenMP)

Things to note:
- There should be a parent folder on the Desktop of the NSCC user 
- Builds should live in this parent folder and be sorted / named appropriately
- Log files should be named appropriately too
- Never edit the parameters files
- Always rebuild from a clean checkout
- Keep the same input file for all binary variants


