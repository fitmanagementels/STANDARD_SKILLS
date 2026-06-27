# Projeto Persistente

Use esta referencia quando o usuario estiver criando um material didatico real e precisar manter continuidade entre sessoes, chats, ferramentas externas e revisoes.

## Objetivo

Manter o projeto em arquivos persistentes para:

- reduzir dependencia do historico do chat;
- facilitar uso de contexto em NotebookLM, Perplexity, Gemini ou outros chats;
- registrar decisoes e criterios;
- revisar outputs sem procurar informacao na conversa;
- permitir retomada do trabalho em outra sessao ou maquina;
- separar briefing, fontes, prompts, outputs e revisoes.

## Quando propor

Crie ou proponha pasta persistente quando:

- o usuario estiver desenvolvendo uma aula real;
- houver mais de um produto final;
- o projeto envolver fontes externas;
- o usuario for usar NotebookLM, Perplexity, Gemini ou RAG;
- houver outputs para revisar;
- o trabalho provavelmente continuara em outra sessao.

Se a intencao de iniciar projeto real estiver clara e a pasta puder ser criada com seguranca no workspace atual, crie a estrutura padrao sem pedir confirmacao. Informe o que foi criado e quais suposicoes foram usadas.

Pergunte antes apenas se houver risco de sobrescrever arquivos, destino fora do workspace, nome ambíguo ou acao destrutiva.

Nao force persistencia para perguntas pequenas, brainstorming rapido ou testes sem compromisso.

## Criacao vs atualizacao

Separe criacao estrutural de consolidacao de conteudo:

- Criar pasta, subpastas e arquivos-base: automatico quando seguro.
- Preencher templates, estado inicial e lacunas: automatico quando seguro.
- Registrar briefing inferido com marcadores `Assumido` ou `A validar`: automatico.
- Consolidar arquitetura, roteiro, fontes, diretrizes, prompts finais, revisoes e produtos: somente apos validacao/auditoria do usuario.
- Sobrescrever arquivo existente: nunca sem mostrar resumo da mudanca e receber autorizacao.

A skill deve deixar o usuario livre de digitar conteudo extenso, mas nao livre da validacao. O fluxo correto e: Codex prepara ou pede a outra IA, usuario valida/audita, Codex consolida nos arquivos.

## Estrutura recomendada

Use uma pasta com nome claro e sem acentos, por exemplo:

```text
projetos-didaticos/
└── nome-da-aula/
    ├── 00-estado-atual.md
    ├── 00-briefing.md
    ├── 01-arquitetura-logica.md
    ├── 02-roteiro-mestre.md
    ├── 03-fontes-e-evidencias.md
    ├── 04-diretrizes/
    │   ├── diretriz-didatica.md
    │   ├── diretriz-visual.md
    │   ├── diretriz-slides.md
    │   └── diretriz-ebook-mobile.md
    ├── 05-prompts/
    │   ├── perplexity.md
    │   ├── open-evidence.md
    │   ├── notebooklm-slides.md
    │   └── notebooklm-ebook.md
    ├── 06-outputs-externos/
    ├── 07-revisoes/
    ├── 08-produtos-finais/
    └── html/
```

Se o usuario preferir outra raiz, use a pasta escolhida. Se nao houver preferencia, sugira `projetos-didaticos/<slug-do-tema>/` dentro do workspace atual.

## Regra de atualizacao por etapa

Atualize ou proponha atualizar arquivos assim:

- Estado do projeto e proxima acao -> `00-estado-atual.md`.
- Briefing concluido -> `00-briefing.md`.
- Arquitetura logica definida -> `01-arquitetura-logica.md`.
- Roteiro aprovado -> `02-roteiro-mestre.md`.
- Busca, RAG ou evidencias -> `03-fontes-e-evidencias.md`.
- Diretrizes -> `04-diretrizes/*.md`.
- Prompts para ferramentas externas -> `05-prompts/*.md`.
- Outputs recebidos de outras IAs -> `06-outputs-externos/*.md`.
- Revisoes e diagnosticos -> `07-revisoes/*.md`.
- Versoes finais -> `08-produtos-finais/`.
- HTML, CSS, JS e assets interativos -> `html/`.

Quando o usuario trouxer novo conteudo no chat, pergunte se deve ser incorporado ao arquivo correspondente. Se a resposta for obvia pelo fluxo, proponha a atualizacao e execute quando estiver autorizado.

Em modo pratico, evite pedir que o usuario preencha arquivos do zero. Preencha versoes iniciais com base no briefing e deixe lacunas marcadas como `Pendente`, `Assumido` ou `A validar`. O usuario deve corrigir o que estiver desalinhado.

Nao trate rascunhos inferidos como aprovados. Use status nos arquivos quando necessario:

```text
Status: Rascunho / A validar / Validado / Substituido
```

Ao final de cada checkpoint, indique:

- arquivo a atualizar;
- resumo do que entrara no arquivo;
- decisao necessaria do usuario;
- proximo prompt externo ou proxima etapa apos validacao.

## Conteudo minimo dos arquivos

### `00-estado-atual.md`

```markdown
# Estado Atual

## Etapa atual

## Objetivo imediato

## Decisoes ja tomadas

## Arquivos principais

## Ultima ferramenta usada

## Output aguardado

## Pendencias

## Proxima acao recomendada
```

### `00-briefing.md`

```markdown
# Briefing

## Tema

## Publico

## Objetivo da aula

## Formato e duracao

## Tom e nivel

## Produtos finais

## Criterios de sucesso

## Decisoes em aberto
```

### `01-arquitetura-logica.md`

```markdown
# Arquitetura Logica

## Conceitualizacao

## Contextualizacao

## Problematizacao

## Relacao entre elementos

## Metodo, tecnica ou habilidade final

## Consolidacao

## Lacunas logicas
```

### `02-roteiro-mestre.md`

```markdown
# Roteiro Mestre

## Visao geral

## Blocos da aula

### Bloco 1 - [nome]
- Objetivo:
- Ideia central:
- Subtopicos:
- Evidencias:
- Exemplos:
- Transicao:

## Pendencias
```

### `03-fontes-e-evidencias.md`

```markdown
# Fontes e Evidencias

## Fontes proprias

## Buscas externas

## Afirmacoes seguras

## Afirmacoes com cautela

## Controversias

## Referencias

## Lacunas
```

### Revisoes

Nomeie revisoes com data ou etapa:

```text
07-revisoes/2026-06-27-revisao-slides-v1.md
07-revisoes/revisao-ebook-mobile-v2.md
```

Inclua:

- produto revisado;
- criterio usado;
- diagnostico;
- problemas por prioridade;
- prompt de correcao;
- decisao final.

## Fluxo de retomada

Ao continuar um projeto persistente:

1. Leia `00-estado-atual.md` primeiro, se existir.
2. Liste ou leia os arquivos principais quando o estado estiver incompleto.
3. Identifique a etapa atual.
4. Resuma estado, decisoes e pendencias.
5. Pergunte apenas o que falta para seguir.
6. Continue atualizando os arquivos, nao apenas o chat.

## Uso com outras IAs

Para NotebookLM:

- use `00-briefing.md`, `01-arquitetura-logica.md`, `02-roteiro-mestre.md`, `03-fontes-e-evidencias.md` e diretrizes especificas como fontes;
- separe fontes teoricas de fontes-diretriz;
- peça que a ferramenta respeite a hierarquia das diretrizes.

Para Perplexity/Open Evidence:

- use briefing e perguntas de pesquisa;
- salve primeiro a resposta bruta ou resumida em `06-outputs-externos/`;
- depois de revisao e validacao, consolide achados em `03-fontes-e-evidencias.md`;
- nao copie respostas longas sem curadoria.

Para Gemini/chat:

- use arquivos de diretriz e trechos de outputs;
- peça variacoes ou diagnosticos pontuais;
- traga o resultado de volta para revisao no Codex.

## Regras praticas

- Prefira Markdown para contexto e diretrizes.
- Mantenha cada arquivo com uma funcao clara.
- Atualize `00-estado-atual.md` ao final de cada etapa relevante.
- Registre decisoes, nao apenas conteudo final.
- Preserve outputs ruins quando eles forem uteis para diagnostico.
- Nao misture fontes teoricas, prompts e revisoes no mesmo arquivo.
- Ao revisar, cite o arquivo-base usado como criterio.
- Nao avance para a etapa seguinte antes de validar ou auditar a saida da etapa atual.
