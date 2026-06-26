#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
git_dir="$repo_root/.repo.git"

if [[ ! -d "$git_dir" ]]; then
  echo "local git metadata not found: $git_dir" >&2
  exit 1
fi

exec git --git-dir="$git_dir" --work-tree="$repo_root" "$@"
