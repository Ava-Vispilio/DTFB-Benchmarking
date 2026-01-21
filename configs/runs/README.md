## Run sweep definitions

Each file in this directory defines a **run sweep** (resource layouts + scaling points).

The PBS run job expects:

- `VARIANT_ID=<variant_id>`
- `RUNSET=<runset_id>`

And loads:

- `configs/runs/<RUNSET>.yml`

### Concepts

- **select**: number of chunks/nodes
- **ncpus**: CPUs per chunk
- **mpiprocs**: MPI ranks per chunk
- **ompthreads**: OpenMP threads per MPI rank
- **ngpus**: GPUs per chunk (GPU runs only)

### Notes

- Prefer to specify **both** `mpiprocs` and `ompthreads` to avoid accidental oversubscription.


