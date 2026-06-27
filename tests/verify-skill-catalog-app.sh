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

require_file "index.html"
require_file "README.md"
require_file "CONTEXTO_DO_PROJETO.md"

require_text "index.html" "id=\"catalogTab\""
require_text "index.html" "id=\"contextTab\""
require_text "index.html" "data-tab=\"catalog\""
require_text "index.html" "data-tab=\"context\""
require_text "index.html" "skillGrid"
require_text "index.html" "skillDetail"
require_text "index.html" "workflowList"
require_text "index.html" "contextTimeline"
require_text "index.html" "categoryFilters"
require_text "index.html" "typeFilters"
require_text "index.html" "html-pwa-appscript"
require_text "index.html" "google-sheets-dashboard"
require_text "index.html" "interactive-learning-html"
require_text "index.html" "html-ui-ux-reviewer"
require_text "index.html" "visual-design-polish"
require_text "index.html" "data-storytelling-dashboard"
require_text "index.html" "orquestrar-material-didatico"
require_text "index.html" "CONTEXTO_DO_PROJETO.md"
require_text "index.html" "renderSkills"
require_text "index.html" "selectSkill"
require_text "index.html" "renderContext"

require_text "README.md" "index.html"
require_text "README.md" "Catálogo interativo"
require_text "CONTEXTO_DO_PROJETO.md" "Catálogo interativo de skills"
require_text "CONTEXTO_DO_PROJETO.md" "CONTEXTO_DO_PROJETO.md"

echo "Skill catalog app verification passed."
