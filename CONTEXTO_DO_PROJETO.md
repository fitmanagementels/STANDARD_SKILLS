# Contexto do Projeto

Este repositório existe para centralizar e sincronizar as skills pessoais do Codex usadas em diferentes máquinas de desenvolvimento.

O objetivo é simples: manter uma pasta padrão de skills versionada no GitHub, permitindo que qualquer máquina configurada com este repositório tenha acesso ao mesmo conjunto de instruções, fluxos, referências e automações.

Além da sincronização, o projeto agora também possui um Catálogo interativo de skills em `Catálogo de Skills.html`. Esse app local apresenta o acervo por categorias, mostra informações resumidas e completas de cada skill, sugere fluxos práticos de combinação e inclui uma aba dedicada a este `CONTEXTO_DO_PROJETO.md`.

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
├── Catálogo de Skills.html
├── README.md
├── CONTEXTO_DO_PROJETO.md
├── tests/
│   └── verify-skill-catalog-app.sh
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

## Catálogo interativo de skills

O arquivo `Catálogo de Skills.html` funciona como uma aplicação instrutiva local para navegar pelo acervo acumulado.

Ele foi criado para não ser uma apresentação estática, mas um app com:

- Aba principal de catálogo de skills.
- Aba de contexto do projeto, baseada neste `CONTEXTO_DO_PROJETO.md`.
- Busca por nome, descrição, função, aplicação prática e prompt.
- Filtros retráteis por categoria e tipo.
- Cards compactos para leitura rápida.
- Painel de detalhes aberto sob demanda com informações completas resumidas.
- Exemplos de uso e prompts de invocação.
- Fluxos recomendados para combinar skills em cenários reais.

As categorias principais do catálogo são:

- Produção HTML e Apps.
- Design, UI e UX.
- Dados e Dashboards.
- Educação Interativa.
- Engenharia e Processo.
- Revisão e Qualidade.
- Gestão da Base de Skills.

O app usa tema escuro com superfícies em cinza, acentos visuais discretos e layout responsivo para consulta confortável.

## Skills incluídas

A primeira skill criada localmente foi:

```text
sync-codex-skills
```

Ela documenta o fluxo para instalar, atualizar, validar e publicar skills entre máquinas.

Depois, o acervo passou a incluir skills específicas para ampliar a produção de HTMLs, apps e materiais didáticos:

- `html-pwa-appscript`
- `google-sheets-dashboard`
- `data-storytelling-dashboard`
- `html-ui-ux-reviewer`
- `visual-design-polish`
- `interactive-learning-html`
- `html-to-pdf-export`
- `orquestrar-material-didatico`

Essas skills foram pensadas para reduzir limitações de produção, melhorar UI/UX, enriquecer dashboards, estruturar apps com Google Sheets/App Script, criar conteúdos didáticos interativos e exportar HTMLs bonitos para PDF.

Também foi importado o pacote Superpowers, do repositório:

```text
https://github.com/obra/superpowers
```

Commit importado:

```text
896224c4b1879920ab573417e68fd51d2ccc9072
```

As notices e a licença MIT do projeto original estão em:

```text
THIRD_PARTY_NOTICES.md
```

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

## Validação do catálogo

Quando alterar o app ou a documentação ligada ao catálogo, rode:

```bash
bash tests/verify-skill-catalog-app.sh
```

Esse teste confere a presença das abas, filtros, painel de detalhes, fluxos recomendados, skills principais e referências ao `CONTEXTO_DO_PROJETO.md`.
