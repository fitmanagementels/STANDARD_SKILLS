# Codex Skills

Repositório padrão para sincronizar skills pessoais do Codex entre máquinas e consultar o acervo em um Catálogo interativo.

## Catálogo interativo

Abra [index.html](/home/elohimlima/Downloads/VSCODE|ANTIGRAVITY/STANDARD_CONTEXT_IA/index.html) no navegador para navegar pelo acervo como um app local.

O catálogo inclui:

- Busca por nome, função, aplicação e exemplo.
- Filtros por categoria e tipo de skill.
- Cards resumidos com funções principais.
- Painel de detalhes com aplicação prática, resumo completo e prompt de invocação.
- Fluxos recomendados para combinar skills em trabalhos reais.
- Aba dedicada ao `CONTEXTO_DO_PROJETO.md`, apresentada como histórico organizado do projeto.

## Estrutura

```text
.
├── index.html
├── skills/
│   └── sync-codex-skills/
└── scripts/
    └── install.sh
```

## Skills incluídas

Além da skill local `sync-codex-skills`, este repositório inclui o pacote de skills Superpowers importado de:

```text
https://github.com/obra/superpowers
```

A origem exata e a licença estão registradas em [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).

O acervo também contém skills pessoais voltadas a produção HTML, Apps Script, dashboards, UI/UX, design visual, conteúdo didático interativo e gestão da própria base.

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
