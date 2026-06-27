# Protocolo de Sessao

Use esta referencia para garantir que cada interacao avance o projeto com clareza, especialmente quando houver arquivos persistentes e ferramentas externas.

## Objetivo

Evitar conversas soltas. Cada sessao deve:

1. saber onde o projeto esta;
2. escolher a proxima acao;
3. produzir uma saida executavel;
4. indicar onde salvar;
5. definir o que deve voltar para revisao;
6. atualizar o estado do projeto.

## Inicio de projeto

Quando o usuario comecar um material novo:

1. Proponha criar pasta persistente se o trabalho for real.
2. Defina ou sugira um slug de pasta.
3. Crie ou proponha `00-estado-atual.md`.
4. Preencha o briefing minimo.
5. Termine com a proxima acao recomendada.

Formato de resposta:

```text
Etapa atual:
[briefing inicial]

Arquivos a criar/atualizar:
- 00-estado-atual.md
- 00-briefing.md

Proxima acao:
[pergunta ou tarefa]
```

## Retomada de projeto

Quando o usuario continuar um projeto existente:

1. Leia `00-estado-atual.md`.
2. Se faltar contexto, leia `00-briefing.md`, `01-arquitetura-logica.md` e `02-roteiro-mestre.md`.
3. Resuma em ate 8 linhas: etapa, decisoes, pendencias e proxima acao.
4. Nao reinicie briefing se ja houver briefing suficiente.

Formato de retomada:

```text
Estado resumido:
- Etapa:
- Decisoes:
- Pendencias:
- Proxima acao:

Preciso de:
[no maximo 3 itens]
```

## Geracao de prompt externo

Todo prompt para Perplexity, Open Evidence, NotebookLM, Gemini ou outra IA deve ter este pacote:

```text
Ferramenta:
[nome]

Objetivo desta rodada:
[resultado esperado]

O que usar como contexto:
[arquivos/trechos/fontes]

Prompt pronto:
[texto para colar]

Formato esperado:
[como a resposta deve vir]

Salvar resultado em:
[caminho recomendado]

Trazer de volta ao Codex:
[o que o usuario deve retornar]
```

Se o prompt for grande ou o produto complexo, divida em rodadas. Prefira tres prompts bons e verificaveis a um prompt enorme que a ferramenta pode ignorar.

## Recebimento de output externo

Quando o usuario trouxer output de outra ferramenta:

1. Identifique origem: ferramenta, prompt usado, arquivos/fontes usados.
2. Identifique produto: pesquisa, roteiro, slides, ebook, HTML, imagem, infografico.
3. Salve ou proponha salvar em `06-outputs-externos/`.
4. Revise contra briefing, roteiro e diretrizes.
5. Gere decisao objetiva.

Se o output estiver incompleto, peca o minimo necessario: prompt usado, fonte usada ou trecho do output.

## Validacao de produto

Toda validacao deve entregar:

```text
Produto avaliado:
[nome/versao]

Base de comparacao:
[briefing, roteiro, diretriz, fonte]

Diagnostico:
[1-3 frases]

Problemas por prioridade:
1. ...
2. ...
3. ...

Decisao:
[Aprovado / Aprovado com ajustes pequenos / Regerar uma parte / Regerar tudo / Mudar diretriz antes de tentar de novo]

Proxima acao:
[acao concreta]

Arquivo a atualizar:
[caminho]
```

## Correcao e nova rodada

Quando precisar corrigir:

1. Diga se o problema esta no briefing, diretriz, prompt, ferramenta ou output.
2. Corrija a diretriz antes de pedir nova geracao quando a diretriz estiver fraca.
3. Gere prompt de correcao com alvo claro.
4. Indique se deve regerar tudo ou apenas uma parte.
5. Atualize `00-estado-atual.md`.

## Atualizacao do estado

Ao final de etapa relevante, atualize ou proponha atualizar `00-estado-atual.md` com:

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

Regra simples: se uma decisao foi tomada, um prompt foi enviado, um output foi recebido ou uma revisao foi concluida, o estado deve mudar.
