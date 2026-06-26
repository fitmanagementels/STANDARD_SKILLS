---
name: sync-codex-skills
description: Maintain and synchronize a shared Codex skills repository across multiple machines. Use when Codex needs to install this repository as the active skills folder, back up existing local skills, add or update skills, validate skill folders, or prepare Git commits that publish skill changes for reuse on other machines.
---

# Sync Codex Skills

## Core Workflow

Use this repository as the source of truth for personal Codex skills:

1. Keep shared skills under `skills/<skill-name>/`.
2. Keep each skill folder minimal: `SKILL.md` is required, `agents/openai.yaml` is recommended, and `scripts/`, `references/`, or `assets/` should exist only when useful.
3. Avoid storing API keys, tokens, credentials, private client data, browser profiles, or machine-specific paths in shared skills.
4. Validate changed skills before committing.
5. Commit and push changes so other machines can pull the same skills.

## Install On A Machine

From the repository root, prefer:

```bash
bash scripts/install.sh
```

The installer should:

- Create `~/.codex` when missing.
- Move an existing real `~/.codex/skills` folder to a timestamped backup.
- Replace `~/.codex/skills` with a symlink to this repository's `skills/` directory.
- Leave an existing correct symlink unchanged.

After cloning on another machine, run the installer once, then use `git pull` to receive updates.

## Update Or Add Skills

When adding a new skill:

1. Create the folder name in lowercase hyphen-case.
2. Write concise frontmatter with only `name` and `description`.
3. Put detailed, conditional material in `references/` and link it from `SKILL.md`.
4. Add deterministic automation under `scripts/` only when repeated work benefits from it.
5. Keep generated artifacts, caches, and secrets out of the repository.

For substantial skill creation or revision, use the system `skill-creator` guidance and its validator.

## Validation

Validate each changed skill with:

```bash
python3 /home/elohimlima/.codex/skills/.system/skill-creator/scripts/quick_validate.py skills/<skill-name>
```

If that system path is unavailable on another machine, validate manually:

- `SKILL.md` exists.
- Frontmatter is valid YAML.
- Frontmatter contains only `name` and `description`.
- Skill folder name exactly matches `name`.
- Name uses lowercase letters, digits, and hyphens only.

## Git Routine

Before committing:

```bash
git status --short
git diff -- skills scripts README.md .gitignore
```

Commit only the intended changes. Use short messages such as:

```bash
git commit -m "add shared codex skills setup"
```
