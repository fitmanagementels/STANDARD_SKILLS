#!/usr/bin/env bash
set -euo pipefail

require_file() {
  local file="$1"
  if [[ ! -f "$file" ]]; then
    echo "Missing required file: $file" >&2
    exit 1
  fi
}

require_text() {
  local file="$1"
  local text="$2"
  if ! grep -Fq "$text" "$file"; then
    echo "Missing expected text in $file: $text" >&2
    exit 1
  fi
}

require_file "skills/html-to-pdf-export/SKILL.md"
require_file "skills/html-to-pdf-export/agents/openai.yaml"

require_text "skills/html-to-pdf-export/SKILL.md" "name: html-to-pdf-export"
require_text "skills/html-to-pdf-export/SKILL.md" "@media print"
require_text "skills/html-to-pdf-export/SKILL.md" "PDF estatico bonito"
require_text "skills/html-to-pdf-export/SKILL.md" "PDF interativo"
require_text "skills/html-to-pdf-export/SKILL.md" "Salvar como PDF"
require_text "skills/html-to-pdf-export/SKILL.md" "print.html"
require_text "skills/html-to-pdf-export/SKILL.md" "botoes"
require_text "skills/html-to-pdf-export/SKILL.md" "links internos"
require_text "skills/html-to-pdf-export/SKILL.md" "QR codes"

require_text "skills/html-to-pdf-export/agents/openai.yaml" "HTML to PDF Export"
require_text "skills/html-to-pdf-export/agents/openai.yaml" '$html-to-pdf-export'

echo "html-to-pdf-export skill verification passed."
