#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/common.sh"

usage() {
  cat <<'EOF'
Usage:
  ./scripts/collect_results.sh --variant <variant_id> --runset <runset_id>

Copies run outputs from ~/Desktop/DTFB-Bench (or ~/DTFB-Bench) back into repo ./results/.
EOF
}

variant=""
runset=""

while [[ $# -gt 0 ]]; do
  case "$1" in
    --variant) variant="$2"; shift 2;;
    --runset) runset="$2"; shift 2;;
    -h|--help) usage; exit 0;;
    *) die "Unknown arg: $1";;
  esac
done

[[ -n "$variant" ]] || die "--variant is required"
[[ -n "$runset" ]] || die "--runset is required"

root="$(ensure_parent_root)"
src="${root}/runs/${variant}/${runset}"
dst="results/${variant}/${runset}"

[[ -d "$src" ]] || die "Run folder not found: $src"

mkdir -p "$dst"
cp -R "${src}/." "$dst/"

echo "Copied:"
echo "  from: $src"
echo "  to:   $dst"


