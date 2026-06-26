# Contexto do Projeto

Este repositório existe para centralizar e sincronizar as skills pessoais do Codex usadas em diferentes máquinas de desenvolvimento.

O objetivo é simples: manter uma pasta padrão de skills versionada no GitHub, permitindo que qualquer máquina configurada com este repositório tenha acesso ao mesmo conjunto de instruções, fluxos, referências e automações.

## Por que este projeto existe

O usuário trabalha em várias máquinas e alterna entre projetos diferentes no VS Code. Sem uma estrutura compartilhada, cada máquina pode acabar com skills diferentes, versões antigas ou configurações manuais difíceis de reproduzir.

Este repositório resolve isso usando Git como fonte única de verdade.

## Como a sincronização funciona

A pasta principal é:

```text
skills/
```

Cada skill fica em uma subpasta própria:

```text
skills/<nome-da-skill>/
```

O script abaixo cria um link simbólico da pasta local do Codex para a pasta `skills/` deste repositório:

```bash
bash scripts/install.sh
```

Na prática, ele faz com que:

```text
~/.codex/skills
```

aponte para:

```text
<este-repositorio>/skills
```

Assim, quando o repositório recebe `git pull`, as skills disponíveis para o Codex também são atualizadas.

## Estrutura atual

```text
.
├── README.md
├── CONTEXTO_DO_PROJETO.md
├── scripts/
│   ├── git-workspace.sh
│   └── install.sh
└── skills/
    └── sync-codex-skills/
        ├── SKILL.md
        ├── agents/
        │   └── openai.yaml
        └── references/
            └── machine-setup.md
```

## Skill inicial

A primeira skill criada foi:

```text
sync-codex-skills
```

Ela documenta o fluxo para instalar, atualizar, validar e publicar skills entre máquinas.

## Git neste workspace

Este workspace tem uma particularidade: existe um diretório `.git` sintético/somente-leitura criado pelo ambiente. Por isso, o repositório Git real foi inicializado em:

```text
.repo.git
```

Para rodar comandos Git nesta pasta, use o wrapper:

```bash
bash scripts/git-workspace.sh status --short
bash scripts/git-workspace.sh add .
bash scripts/git-workspace.sh commit -m "mensagem do commit"
bash scripts/git-workspace.sh push
```

Em clones normais feitos diretamente do GitHub, esse wrapper provavelmente não será necessário; os comandos `git` comuns devem funcionar.

## Repositório remoto

O remote configurado para este projeto é:

```text
git@github.com:fitmanagementels/STANDARD_SKILLS.git
```

## Cuidados importantes

Não colocar neste repositório:

- Tokens
- Chaves de API
- Senhas
- Arquivos `.env`
- Dados privados de clientes
- Configurações específicas demais de uma única máquina

Skills devem conter apenas instruções, referências, scripts e assets reutilizáveis.

## Fluxo recomendado

Antes de editar:

```bash
bash scripts/git-workspace.sh pull
bash scripts/git-workspace.sh status --short
```

Depois de editar:

```bash
bash scripts/git-workspace.sh add .
bash scripts/git-workspace.sh commit -m "update codex skills"
bash scripts/git-workspace.sh push
```

Em outra máquina:

```bash
git clone git@github.com:fitmanagementels/STANDARD_SKILLS.git
cd STANDARD_SKILLS
bash scripts/install.sh
```

Depois disso, essa máquina passa a usar as mesmas skills versionadas neste repositório.
