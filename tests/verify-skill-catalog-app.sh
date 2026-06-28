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

require_file "Catálogo de Skills.html"
require_file "README.md"
require_file "CONTEXTO_DO_PROJETO.md"

require_text "Catálogo de Skills.html" "<title>Catálogo de Skills</title>"
require_text "Catálogo de Skills.html" "<h1>Catálogo de Skills</h1>"
require_text "Catálogo de Skills.html" "id=\"catalogTab\""
require_text "Catálogo de Skills.html" "id=\"contextTab\""
require_text "Catálogo de Skills.html" "data-tab=\"catalog\""
require_text "Catálogo de Skills.html" "data-tab=\"context\""
require_text "Catálogo de Skills.html" "id=\"toggleFilters\""
require_text "Catálogo de Skills.html" "id=\"filterPanel\""
require_text "Catálogo de Skills.html" "compact-skill-card"
require_text "Catálogo de Skills.html" "skillGrid"
require_text "Catálogo de Skills.html" "skillDetail"
require_text "Catálogo de Skills.html" "id=\"objectiveShortcuts\""
require_text "Catálogo de Skills.html" "id=\"recentSkills\""
require_text "Catálogo de Skills.html" "id=\"detailTabs\""
require_text "Catálogo de Skills.html" "id=\"closeDetail\""
require_text "Catálogo de Skills.html" "workflowList"
require_text "Catálogo de Skills.html" "contextTimeline"
require_text "Catálogo de Skills.html" "categoryFilters"
require_text "Catálogo de Skills.html" "typeFilters"
require_text "Catálogo de Skills.html" "html-pwa-appscript"
require_text "Catálogo de Skills.html" "google-sheets-dashboard"
require_text "Catálogo de Skills.html" "interactive-learning-html"
require_text "Catálogo de Skills.html" "html-ui-ux-reviewer"
require_text "Catálogo de Skills.html" "visual-design-polish"
require_text "Catálogo de Skills.html" "data-storytelling-dashboard"
require_text "Catálogo de Skills.html" "orquestrar-material-didatico"
require_text "Catálogo de Skills.html" "html-to-pdf-export"
require_text "Catálogo de Skills.html" "CONTEXTO_DO_PROJETO.md"
require_text "Catálogo de Skills.html" "renderSkills"
require_text "Catálogo de Skills.html" "selectSkill"
require_text "Catálogo de Skills.html" "renderContext"
require_text "Catálogo de Skills.html" "toggleFilters"
require_text "Catálogo de Skills.html" "renderObjectives"
require_text "Catálogo de Skills.html" "renderDetailTabs"
require_text "Catálogo de Skills.html" "copyPrompt"
require_text "Catálogo de Skills.html" "toggleFavorite"
require_text "Catálogo de Skills.html" "renderRecentSkills"
require_text "Catálogo de Skills.html" "aliases"
require_text "Catálogo de Skills.html" "localStorage"

require_text "README.md" "Catálogo de Skills.html"
require_text "README.md" "Catálogo interativo"
require_text "CONTEXTO_DO_PROJETO.md" "Catálogo interativo de skills"
require_text "CONTEXTO_DO_PROJETO.md" "CONTEXTO_DO_PROJETO.md"

echo "Skill catalog app verification passed."
