#!/usr/bin/env bash
set -euo pipefail

die() {
  echo "ERROR: $*" >&2
  exit 1
}

require_env() {
  local name="$1"
  [[ -n "${!name:-}" ]] || die "Missing required env var: $name"
}

timestamp_utc() {
  date -u +"%Y-%m-%dT%H%M%SZ"
}

ensure_parent_root() {
  # Prefer Desktop folder on compute nodes; fallback to $HOME if Desktop isn't available.
  local desktop="$HOME/Desktop"
  if [[ -d "$desktop" ]]; then
    echo "$desktop/DTFB-Bench"
  else
    echo "$HOME/DTFB-Bench"
  fi
}

mkdir_clean() {
  local dir="$1"
  rm -rf "$dir"
  mkdir -p "$dir"
}


