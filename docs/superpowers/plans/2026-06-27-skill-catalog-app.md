# Skill Catalog App Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build a single-file HTML app that teaches how to use the skills in this repository and update the project summary/history.

**Architecture:** A static `Catálogo de Skills.html` contains structured skill data, project context data, CSS, and JavaScript interactions. Documentation changes live in `README.md` and `CONTEXTO_DO_PROJETO.md`. A shell verification script checks required files, content, and app affordances.

**Tech Stack:** HTML, CSS, vanilla JavaScript, Markdown documentation, Bash verification.

## Global Constraints

- Keep the app usable by opening `Catálogo de Skills.html` directly in a browser.
- Use a modern dark theme with diversified gray surfaces and restrained accents.
- Include tabs for the skill catalog and the project context.
- Show skill name, short description, summarized functions, practical application, complete summarized details, and example prompts.
- Keep repository secrets and machine-specific data out of generated files.

---

### Task 1: Verification Script

**Files:**
- Create: `tests/verify-skill-catalog-app.sh`

**Interfaces:**
- Consumes: `Catálogo de Skills.html`, `README.md`, `CONTEXTO_DO_PROJETO.md`
- Produces: A deterministic shell check with exit code 0 only when the app and docs meet required structure.

- [ ] Add checks for required files, app tabs, category filters, details panel, workflow shortcuts, project context tab, and required skill names.
- [ ] Run `bash tests/verify-skill-catalog-app.sh` before implementation and confirm it fails before the app meets the expected structure.

### Task 2: HTML App

**Files:**
- Create: `Catálogo de Skills.html`

**Interfaces:**
- Consumes: skill metadata from `skills/*/SKILL.md` and project context from `CONTEXTO_DO_PROJETO.md`
- Produces: Interactive local app with catalog tab and context tab.

- [ ] Add semantic HTML structure for header, tabs, filters, skill grid, detail panel, workflow shortcuts, and context sections.
- [ ] Add dark theme CSS with responsive layout, accessible focus states, readable contrast, and stable button/card dimensions.
- [ ] Add JavaScript data model for skills, categories, workflows, and context.
- [ ] Add interactions: search, category filter, type filter, skill selection, expandable details, workflow presets, and tab switching.

### Task 3: Documentation

**Files:**
- Modify: `README.md`
- Modify: `CONTEXTO_DO_PROJETO.md`

**Interfaces:**
- Consumes: current repository description and new app behavior.
- Produces: Updated project summary and historical context.

- [ ] Update `README.md` with the app purpose, file path, and usage.
- [ ] Update `CONTEXTO_DO_PROJETO.md` with the new HTML catalog milestone, categories, and maintenance notes.

### Task 4: Verification And Commit

**Files:**
- Validate: `Catálogo de Skills.html`, `README.md`, `CONTEXTO_DO_PROJETO.md`, `tests/verify-skill-catalog-app.sh`

**Interfaces:**
- Consumes: all changed files.
- Produces: committed and pushed repository state.

- [ ] Run `bash tests/verify-skill-catalog-app.sh` and confirm it passes.
- [ ] Check git status and staged diff.
- [ ] Commit the intended files.
- [ ] Push to `main`.
