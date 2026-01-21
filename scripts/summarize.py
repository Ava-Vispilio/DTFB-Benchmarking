import argparse
import csv
import os
from pathlib import Path


def parse_env_file(path: Path) -> dict:
    data: dict[str, str] = {}
    for line in path.read_text(encoding="utf-8", errors="replace").splitlines():
        line = line.strip()
        if not line or line.startswith("#"):
            continue
        if "=" not in line:
            continue
        k, v = line.split("=", 1)
        data[k.strip()] = v.strip()
    return data


def iter_manifests(results_dir: Path):
    for p in results_dir.rglob("run_manifest.env"):
        yield p


def main() -> int:
    ap = argparse.ArgumentParser()
    ap.add_argument("--results-dir", default="results", help="Results directory (default: results)")
    ap.add_argument("--out", default="results/summary.csv", help="Output CSV path")
    args = ap.parse_args()

    results_dir = Path(args.results_dir)
    out_path = Path(args.out)
    out_path.parent.mkdir(parents=True, exist_ok=True)

    rows = []
    for manifest in iter_manifests(results_dir):
        d = parse_env_file(manifest)
        d["_manifest_path"] = str(manifest)
        rows.append(d)

    # Stable columns: known keys first, then any extras.
    preferred = [
        "timestamp_utc",
        "variant_id",
        "runset",
        "run_id",
        "select",
        "ncpus",
        "mpiprocs",
        "ompthreads",
        "ngpus",
        "pbs_jobid",
        "pbs_queue",
        "cuda_visible_devices",
        "_manifest_path",
    ]
    all_keys = set()
    for r in rows:
        all_keys.update(r.keys())
    extras = sorted(k for k in all_keys if k not in preferred)
    fieldnames = preferred + extras

    with out_path.open("w", newline="", encoding="utf-8") as f:
        w = csv.DictWriter(f, fieldnames=fieldnames)
        w.writeheader()
        for r in sorted(rows, key=lambda x: (x.get("variant_id", ""), x.get("run_id", ""))):
            w.writerow(r)

    print(f"Wrote {len(rows)} rows to {out_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())


