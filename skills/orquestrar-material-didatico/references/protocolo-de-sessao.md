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

## Modo pratico

O usuario quer baixo atrito, pouca digitacao e participacao por validacao. Portanto:

- avance com suposicoes explicitas quando a decisao for reversivel;
- crie estruturas padrao sem pedir permissao quando a intencao for clara e a operacao for segura no workspace;
- pergunte apenas o que muda a direcao do projeto;
- entregue prompts prontos para copiar e colar;
- use IAs de busca/texto para gerar conteudo teorico em vez de pedir que o usuario digite esse conteudo;
- chame o usuario principalmente para validar checkpoints, corrigir direcao, auditar conteudo consolidado ou trazer outputs externos.

Nao use perguntas como forma de adiar trabalho operacional. Se o proximo passo padrao for claro, execute a preparacao da etapa. Mas nao use automacao para pular validacao: execute uma etapa, pare, valide, depois siga.

## Ciclo validado por etapa

Use este ciclo em todo projeto real:

1. Identificar a etapa atual.
2. Criar ou atualizar a estrutura persistente minima, se necessario.
3. Produzir apenas a saida da etapa atual: rascunho, prompt externo, diagnostico ou proposta de atualizacao.
4. Indicar quais arquivos seriam criados ou atualizados.
5. Pedir validacao/auditoria do usuario antes de consolidar conteudo substantivo.
6. Aguardar aprovacao, correcao ou output externo.
7. Depois da validacao, atualizar os arquivos correspondentes e `00-estado-atual.md`.
8. So entao propor a proxima etapa.

Nao execute todas as fases de planejamento em uma unica resposta. Se for necessario antecipar o caminho completo, apresente-o como mapa resumido, nao como conteudo consolidado.

## Inicio de projeto

Quando o usuario comecar um material novo:

1. Crie pasta persistente se o trabalho for real e o destino for seguro.
2. Defina um slug de pasta a partir do tema.
3. Crie `00-estado-atual.md` e os arquivos-base padrao.
4. Preencha templates, estado inicial, briefing inferido e lacunas marcadas como `Pendente`, `Assumido` ou `A validar`.
5. Nao preencha arquitetura, roteiro, fontes, diretrizes e prompts como se estivessem concluidos no primeiro passe.
6. Termine com o primeiro checkpoint: validacao do briefing ou prompt externo pronto para buscar/extrair conteudo.

Pergunte antes de criar somente se:

- houver risco de sobrescrever arquivos existentes;
- o destino for fora do workspace permitido;
- o tema nao permitir nome de pasta minimamente claro;
- a criacao exigir acao destrutiva ou credenciais.

Formato de resposta:

```text
Etapa atual:
[briefing inicial]

Arquivos criados/atualizados:
- 00-estado-atual.md
- 00-briefing.md

Proxima acao:
[prompt externo, tarefa ou pergunta essencial]
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

O prompt deve transferir trabalho para a ferramenta externa. Evite pedir que o usuario escreva manualmente conteudo teorico que Perplexity, Open Evidence, NotebookLM, Gemini ou RAG podem buscar, extrair ou sintetizar.

Quando faltar conteudo teorico, fontes, definicoes, autores, evidencias, exemplos ou estrutura de base, gere primeiro um prompt externo. Nao solicite ao usuario "mande o conteudo" como primeira acao, exceto quando ele disser que ja tem uma fonte especifica e quer usa-la.

Se o prompt for grande ou o produto complexo, divida em rodadas. Prefira tres prompts bons e verificaveis a um prompt enorme que a ferramenta pode ignorar.

## Curadoria hibrida de evidencias

Quando a etapa atual envolver fontes, base teorica, evidencia, definicoes ou exemplos, acione a curadoria hibrida:

1. Transforme briefing e arquitetura em perguntas de pesquisa.
2. Escolha a ferramenta com menor atrito e maior qualidade para aquela pergunta.
3. Gere prompt pronto para a ferramenta externa.
4. Salve ou proponha salvar o output bruto em `06-outputs-externos/`.
5. Audite o output antes de transformar em conteudo consolidado.
6. Proponha consolidacao em `03-fontes-e-evidencias.md`.
7. Aguarde validacao do usuario antes de consolidar.

Nao peca que o usuario escreva a base teorica. Peca que ele execute a rodada externa e traga o output para revisao.

## Recebimento de output externo

Quando o usuario trouxer output de outra ferramenta:

1. Identifique origem: ferramenta, prompt usado, arquivos/fontes usados.
2. Identifique produto: pesquisa, roteiro, slides, ebook, HTML, imagem, infografico.
3. Salve ou proponha salvar em `06-outputs-externos/`.
4. Revise contra briefing, roteiro e diretrizes.
5. Gere decisao objetiva.
6. Proponha a atualizacao dos arquivos de trabalho e aguarde validacao antes de consolidar conteudo substantivo.

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

Quando a mudanca for apenas procedural, atualize `00-estado-atual.md` diretamente. Quando a mudanca consolidar conteudo didatico, fonte, roteiro, diretriz ou produto, mostre a proposta de atualizacao e aguarde validacao/auditoria.
