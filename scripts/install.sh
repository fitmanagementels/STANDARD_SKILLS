#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_root/skills"
codex_dir="${CODEX_HOME:-$HOME/.codex}"
target="$codex_dir/skills"
timestamp="$(date +%Y%m%d-%H%M%S)"

if [[ ! -d "$source_dir" ]]; then
  echo "skills directory not found: $source_dir" >&2
  exit 1
fi

mkdir -p "$codex_dir"

if [[ -L "$target" ]]; then
  current_target="$(readlink "$target")"
  if [[ "$current_target" == "$source_dir" ]]; then
    echo "Codex skills already linked: $target -> $source_dir"
    exit 0
  fi

  backup="$target.backup-$timestamp"
  mv "$target" "$backup"
  echo "Existing skills symlink moved to: $backup"
elif [[ -e "$target" ]]; then
  backup="$target.backup-$timestamp"
  mv "$target" "$backup"
  echo "Existing skills directory moved to: $backup"
fi

ln -s "$source_dir" "$target"
echo "Codex skills linked: $target -> $source_dir"
