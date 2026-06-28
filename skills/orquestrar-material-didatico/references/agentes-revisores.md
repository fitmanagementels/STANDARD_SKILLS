# Agentes Revisores

Use estes papeis para revisar ou produzir partes do processo. Se houver ferramenta de subagentes disponivel, delegue com prompts independentes. Se nao houver, assuma os papeis em sequencia.

## Arquiteto didatico

Objetivo: garantir progressao logica e aprendizagem.

Avalia:

- objetivo da aula;
- sequencia dos topicos;
- dependencia entre conceitos;
- lacunas de explicacao;
- exemplos e aplicacoes.

Pergunta central: "O aluno consegue chegar ao objetivo final seguindo esta sequencia sem saltos logicos?"

## Curador de evidencias

Objetivo: dirigir a pesquisa hibrida, organizar fontes e limitar afirmacoes com base em evidencias.

Avalia:

- perguntas de pesquisa;
- ferramenta mais adequada para cada rodada;
- qualidade das fontes;
- afirmacoes seguras;
- afirmacoes especulativas;
- controversias;
- lacunas;
- risco de exagero.

Pergunta central: "O material afirma apenas o que as fontes sustentam?"

Responsabilidades operacionais:

- gerar prompts para Perplexity, Open Evidence, RAG, NotebookLM ou Gemini;
- receber outputs externos e separar achados uteis de ruido;
- propor correcoes quando a ferramenta trouxer resposta generica, fraca ou sem fonte;
- organizar `03-fontes-e-evidencias.md`;
- pedir validacao antes de consolidar conteudo como base do projeto.

## Estrategista de ferramentas

Objetivo: escolher ferramenta e formato de trabalho.

Avalia:

- etapa atual;
- tipo de fonte disponivel;
- produto desejado;
- restricoes das ferramentas pagas;
- necessidade real de ferramenta externa gratuita;
- se o produto deve ser feito inteiro ou em partes.

Pergunta central: "Qual ferramenta resolve melhor esta etapa com menor atrito?"

## Diretor de slides

Objetivo: transformar roteiro em apresentacao.

Avalia:

- narrativa slide a slide;
- mensagem central de cada slide;
- densidade de texto;
- sugestao visual;
- notas do apresentador;
- coerencia com a aula.

Pergunta central: "Cada slide ajuda a audiencia a avancar na ideia?"

## Editor de ebook mobile

Objetivo: adaptar a aula para leitura no celular.

Avalia:

- capitulos curtos;
- escaneabilidade;
- ritmo de leitura;
- boxes, resumos e checklists;
- exemplos praticos;
- continuidade com slides.

Pergunta central: "O material funciona bem em telas pequenas e como apoio de estudo?"

## Designer HTML didatico

Objetivo: decidir e revisar experiencias HTML.

Avalia:

- necessidade de interacao;
- arquitetura de informacao;
- responsividade;
- ergonomia mobile;
- clareza visual;
- estados de interacao;
- viabilidade de implementacao no VS Code.

Pergunta central: "HTML melhora a aprendizagem ou so adiciona complexidade?"

## Revisor critico

Objetivo: comparar output com intencao original.

Avalia:

- alinhamento ao briefing;
- coerencia entre produtos;
- fidelidade as diretrizes;
- clareza;
- profundidade;
- tom;
- acabamento.

Pergunta central: "Isso entrega o que o usuario queria, no nivel e tom desejados?"

## Diagnosticador de correcao

Objetivo: explicar por que o output saiu ruim e como corrigir.

Avalia:

- se faltou contexto;
- se a diretriz estava fraca;
- se a ferramenta errada foi usada;
- se o pedido estava grande demais;
- se era melhor dividir em partes;
- se houve conflito entre fontes e diretrizes.

Pergunta central: "Qual ajuste tem maior chance de melhorar a proxima versao?"

## Revisor de regressao de conteudo

Objetivo: impedir que uma versao corrigida fique mais rasa que a versao anterior.

Avalia:

- detalhes removidos;
- exemplos perdidos;
- transicoes apagadas;
- reducao de nuance;
- perda de densidade teorica ou pratica;
- se v2 deve substituir v1 ou virar versao hibrida.

Pergunta central: "A correcao melhorou o problema sem empobrecer o material?"

## Formato de revisao por papel

```text
Papel usado:
[agente]

Diagnostico:
[1-3 frases]

Problemas prioritarios:
1. ...
2. ...
3. ...

Correcoes:
1. ...
2. ...
3. ...

Prompt de refinamento:
[prompt pronto para ferramenta externa ou para Codex]
```
