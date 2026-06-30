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

- Criar pasta, subpastas e arquivos-base da etapa atual: automatico quando seguro.
- Preencher templates, estado inicial e lacunas da etapa atual: automatico quando seguro.
- Registrar briefing inferido com marcadores `Assumido` ou `A validar`: automatico.
- Consolidar arquitetura, roteiro, fontes, diretrizes, prompts finais, revisoes e produtos: somente apos validacao/auditoria do usuario.
- Sobrescrever arquivo existente: nunca sem mostrar resumo da mudanca e receber autorizacao.

A skill deve deixar o usuario livre de digitar conteudo extenso, mas nao livre da validacao. O fluxo correto e: Codex prepara ou pede a outra IA, usuario valida/audita, Codex consolida nos arquivos.

Antes de criar arquivo novo, aplique esta ordem:

1. Existe arquivo canonico para essa funcao? Atualize esse arquivo.
2. Existe arquivo de prompt/diretriz da mesma ferramenta e objetivo? Atualize-o.
3. O conteudo e output bruto, revisao formal, versao preservada, produto final ou HTML? Crie novo arquivo.
4. Se for apenas microfase, decisao, ajuste de roteiro ou correcao pequena, registre no arquivo canonico e em `00-estado-atual.md`.

Nao crie arquivo novo para cada passo, fase, tentativa, comentario ou decisao. Muitos arquivos parecidos reduzem a clareza do projeto.

## Estrutura recomendada

Use uma pasta de aula com nome claro e sem acentos, por exemplo:

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
    │   ├── diretriz-notebooklm.md
    │   ├── diretriz-visual.md
    │   ├── diretriz-slides.md
    │   └── diretriz-ebook-mobile.md
    ├── 05-prompts/
    │   ├── pesquisa-hibrida.md
    │   ├── perplexity.md
    │   ├── open-evidence.md
    │   ├── notebooklm-hierarquia-fontes.md
    │   ├── notebooklm-slides.md
    │   └── notebooklm-ebook.md
    ├── 06-outputs-externos/
    ├── 07-revisoes/
    ├── 08-produtos-finais/
    ├── 09-versoes/
    └── html/
```

A estrutura acima e o mapa do projeto, nao uma ordem para criar todos os arquivos no primeiro uso. Crie primeiro o minimo necessario para a etapa atual e adicione arquivos canonicos conforme o fluxo avancar. Se o usuario preferir outra raiz, use a pasta escolhida. Se nao houver preferencia, sugira `projetos-didaticos/<slug-do-tema>/` dentro do workspace atual.

Quando existir uma biblioteca-mae, mantenha a aula como projeto editavel e as pastas compartilhadas como referencias:

```text
MATERIAIS_DIDATICOS/
├── _templates/
├── _diretrizes-padrao/
├── _prompts-padrao/
├── _fontes-recorrentes/
├── _assets/
├── _indice-geral/
├── _arquivo/
└── aula-[tema]/
```

Regra: edite `aula-[tema]/` durante o trabalho normal. Leia pastas com prefixo `_` como referencia e proponha alteracao nelas somente quando o usuario quiser mudar um padrao compartilhado.

## Regra de atualizacao por etapa

Atualize ou proponha atualizar arquivos assim:

- Estado do projeto e proxima acao -> `00-estado-atual.md`.
- Briefing concluido -> `00-briefing.md`.
- Arquitetura logica definida -> `01-arquitetura-logica.md`.
- Roteiro aprovado -> `02-roteiro-mestre.md`.
- Busca, RAG ou evidencias consolidadas -> outputs brutos em `06-outputs-externos/` e mapa/manifesto em `03-fontes-e-evidencias.md`.
- Diretrizes -> `04-diretrizes/*.md`.
- Prompts para pesquisa e ferramentas externas -> `05-prompts/*.md`.
- Outputs recebidos de outras IAs -> `06-outputs-externos/*.md`.
- Revisoes e diagnosticos -> `07-revisoes/*.md`.
- Versoes finais -> `08-produtos-finais/`.
- Versoes intermediarias e comparacoes v1/v2 -> `09-versoes/`.
- HTML, CSS, JS e assets interativos -> `html/`.

Quando o usuario trouxer novo conteudo no chat, pergunte se deve ser incorporado ao arquivo correspondente. Se a resposta for obvia pelo fluxo, proponha a atualizacao e execute quando estiver autorizado.

Em modo pratico, evite pedir que o usuario preencha arquivos do zero. Preencha versoes iniciais com base no briefing e deixe lacunas marcadas como `Pendente`, `Assumido` ou `A validar`. O usuario deve corrigir o que estiver desalinhado.

Arquivos canonicos devem ser reutilizados:

- briefing atual -> `00-briefing.md`;
- arquitetura atual -> `01-arquitetura-logica.md`;
- roteiro mestre e roteiro de conteudo -> `02-roteiro-mestre.md`;
- mapa de fontes -> `03-fontes-e-evidencias.md`;
- diretriz de slides -> `04-diretrizes/diretriz-slides.md`;
- diretriz de ebook -> `04-diretrizes/diretriz-ebook-mobile.md`;
- prompt ativo de slides -> `05-prompts/notebooklm-slides.md`;
- prompt ativo de ebook -> `05-prompts/notebooklm-ebook.md`.

Se uma nova informacao melhorar um desses itens, atualize o arquivo canonico. Nao crie `roteiro-ajustado.md`, `roteiro-final.md`, `roteiro-validado.md` ou equivalentes, exceto quando for necessario preservar versao em `09-versoes/`.

Nao trate rascunhos inferidos como aprovados. Use status nos arquivos quando necessario:

```text
Status: Rascunho / A validar / Validado / Substituido
```

Ao final de cada checkpoint, indique:

- arquivo a atualizar;
- resumo do que entrara no arquivo;
- decisao necessaria do usuario;
- proximo prompt externo ou proxima etapa apos validacao.

## Versionamento e protecao contra perda

Quando um arquivo detalhado receber correcao, nao substitua diretamente. Use versionamento simples:

```text
09-versoes/roteiro-mestre-v1.0.md
09-versoes/roteiro-mestre-v2.0-rascunho.md
09-versoes/comparacao-roteiro-v1-v2.md
```

Regra pratica:

- v1 detalhada fica preservada;
- output corrigido entra como rascunho ou output externo;
- comparacao registra ganhos e perdas;
- arquivo principal so muda depois de validacao;
- se v2 ficou mais simples, consolidar versao hibrida ou pedir nova correcao.

## Conteudo minimo dos arquivos

### `00-estado-atual.md`

```markdown
# Estado Atual

## Etapa atual

## Objetivo imediato

## Decisoes ja tomadas

## Arquivos principais

## Arquivos ativos

- Briefing atual:
- Arquitetura atual:
- Roteiro atual:
- Mapa de fontes:
- Diretriz de slides:
- Diretriz de ebook:
- Prompt em uso:
- Output aguardado:

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

## Roteiro de conteudo para slides

### Slide 1 - [titulo]
- Mensagem central:
- Conteudo essencial:
- Exemplo:
- Sugestao visual:
- Fonte/base:
- Nota do apresentador:

## Roteiro de conteudo para ebook mobile

### Secao 1 - [titulo]
- Objetivo:
- Ideia central:
- Conteudo:
- Exemplo:
- Box/resumo:
- Relacao com slides:

## Pendencias
```

### `03-fontes-e-evidencias.md`

```markdown
# Fontes e Evidencias

Este arquivo e um mapa curado. Ele nao substitui as fontes brutas preservadas em `06-outputs-externos/`.

## Status

## Perguntas investigadas

## Outputs usados

## Manifesto de fontes

## Fontes proprias

## Buscas externas

## Conceitos essenciais

## Afirmacoes seguras

## Afirmacoes com cautela

## Controversias

## Exemplos didaticos aproveitaveis

## Como sustenta a arquitetura da aula

## Referencias

## Lacunas

## Itens descartados e motivo
```

### Revisoes

Nomeie revisoes com data ou etapa:

```text
07-revisoes/2026-06-27-revisao-slides-v1.md
07-revisoes/revisao-ebook-mobile-v2.md
```

Crie arquivo em `07-revisoes/` apenas para revisao formal de output externo ou produto importante. Para pequenos ajustes, registre a decisao em `00-estado-atual.md` e atualize o arquivo canonico correspondente.

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
2. Identifique os arquivos ativos antes de criar novos.
3. Liste ou leia os arquivos principais quando o estado estiver incompleto.
4. Identifique a etapa atual.
5. Resuma estado, decisoes e pendencias.
6. Pergunte apenas o que falta para seguir.
7. Continue atualizando os arquivos canonicos, nao apenas o chat.

## Uso com outras IAs

Para NotebookLM:

- use `00-briefing.md`, `01-arquitetura-logica.md`, `02-roteiro-mestre.md`, `03-fontes-e-evidencias.md`, fontes brutas de `06-outputs-externos/` e diretrizes especificas como fontes;
- separe fontes teoricas de fontes-diretriz;
- peça que a ferramenta respeite a hierarquia das diretrizes.
- quando houver corpus amplo, trate NotebookLM como motor de leitura/sintese e Codex como organizador/revisor. Nao substitua as fontes brutas por uma fonte unificada feita no Codex.

Para Perplexity/Open Evidence:

- use briefing e perguntas de pesquisa;
- salve primeiro a resposta bruta em `06-outputs-externos/`;
- depois de revisao e validacao, consolide apenas mapa, status, cautelas e achados curtos em `03-fontes-e-evidencias.md`;
- nao copie respostas longas sem curadoria.

Para Gemini/chat:

- use arquivos de diretriz e trechos de outputs;
- peça variacoes ou diagnosticos pontuais;
- traga o resultado de volta para revisao no Codex.

## Regras praticas

- Prefira Markdown para contexto e diretrizes.
- Mantenha cada arquivo com uma funcao clara.
- Atualize `00-estado-atual.md` ao final de cada etapa relevante.
- Atualize arquivo canonico antes de criar novo arquivo.
- Registre decisoes, nao apenas conteudo final.
- Preserve outputs ruins quando eles forem uteis para diagnostico.
- Nao misture fontes teoricas, prompts e revisoes no mesmo arquivo.
- Ao revisar, cite o arquivo-base usado como criterio.
- Nao avance para a etapa seguinte antes de validar ou auditar a saida da etapa atual.
- Nao edite pastas compartilhadas da biblioteca-mae sem autorizacao explicita para mudar padrao global.
