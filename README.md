# Codex Skills

Repositório padrão para sincronizar skills pessoais do Codex entre máquinas.

## Estrutura

```text
.
├── skills/
│   └── sync-codex-skills/
└── scripts/
    └── install.sh
```

## Instalar em uma máquina

Clone este repositório e rode:

```bash
bash scripts/install.sh
```

O script cria um link simbólico de `~/.codex/skills` para a pasta `skills/` deste repositório. Se já existir uma pasta local de skills, ela é movida para um backup com data e hora.

## Rotina

```bash
git pull
git status --short
git add skills scripts README.md .gitignore
git commit -m "update codex skills"
git push
```

Neste workspace atual, se `git status` falhar por causa do diretório `.git` reservado pelo ambiente, use:

```bash
bash scripts/git-workspace.sh status --short
bash scripts/git-workspace.sh log --oneline -1
```

Em clones normais feitos a partir do GitHub, os comandos `git` comuns devem funcionar sem esse wrapper.

Não coloque tokens, chaves de API, credenciais ou dados privados dentro das skills.
