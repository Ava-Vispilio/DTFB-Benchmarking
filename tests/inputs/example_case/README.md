## Example benchmark case

Replace this folder with a real DFTB+ input set.

Rules:
- Treat everything under `tests/inputs/` as **immutable** (never edit parameter files).
- The run job copies inputs into a per-run working directory before executing.

How the runner works:
- If `run.sh` exists and is executable, it is called as: `./run.sh /path/to/dftb+`
- Otherwise the runner expects a `dftb_in.hsd` file and runs `dftb+` directly in that folder.


