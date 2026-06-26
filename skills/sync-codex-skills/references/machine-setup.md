# Machine Setup Notes

Use this reference when configuring a new development machine.

## First install

1. Clone the shared skills repository.
2. Run `bash scripts/install.sh` from the repository root.
3. Restart Codex or the editor session if the running process does not pick up new skills immediately.

## Daily use

- Run `git pull` in this repository before starting work on a different machine.
- Run `git status --short` before editing skills to check for uncommitted local changes.
- Run `git push` after committing changes that should appear on other machines.

## Existing local skills

If a machine already has local skills, the installer backs them up instead of deleting them. Review the backup and manually copy any skills that should become shared.
