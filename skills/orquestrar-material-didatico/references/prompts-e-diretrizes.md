# Prompts e Diretrizes

Use esta referencia para criar prompts e fontes-diretriz para ferramentas externas.

## Principio pratico

Use prompts para deslocar trabalho pesado para as IAs certas. O usuario nao deve precisar digitar longos blocos de conteudo teorico quando Perplexity, Open Evidence, NotebookLM, Gemini ou RAG podem buscar, extrair, sintetizar ou reorganizar esse conteudo.

Ao criar prompts, seja diretivo:

- diga qual ferramenta usar;
- diga o que colar ou subir;
- entregue o prompt pronto;
- diga o que salvar;
- diga o que trazer de volta ao Codex;
- evite perguntas desnecessarias antes de entregar uma primeira rodada executavel.

Se faltar conteudo teorico ou fonte, nao peca primeiro que o usuario escreva esse conteudo. Gere uma rodada de busca, RAG ou sintese para Perplexity Pro, Open Evidence, Gemini, NotebookLM ou ferramenta equivalente. A participacao principal do usuario deve ser executar o prompt externo, trazer o resultado e validar a consolidacao.

Cada prompt deve representar uma rodada verificavel. Evite prompts que tentem pesquisar, criar roteiro, criar slides, criar ebook e revisar tudo de uma vez.

Quando houver muitas fontes brutas, nao gere prompt pedindo ao Codex para criar uma fonte unificada extensa. Gere um prompt para NotebookLM trabalhar sobre o corpus preservado e peca uma sintese rastreavel por fonte.

## Estrutura base de prompt externo

Todo prompt para ferramenta externa deve vir acompanhado de um bloco operacional:

```text
Onde usar:
[Perplexity Pro / Open Evidence / NotebookLM / Gemini / outro]

O que colar ou subir:
[arquivos, trechos, fontes ou diretrizes]

Prompt pronto:
[texto para colar]

Formato esperado da resposta:
[lista, tabela, roteiro, documento, JSON, secoes etc.]

O que trazer de volta ao Codex:
[resultado, links, arquivo exportado, trechos problemáticos]

Onde salvar:
[caminho recomendado no projeto persistente]
```

Nao entregue apenas o prompt solto quando o usuario precisa executar a acao fora do Codex.

```text
Contexto:
[tema, publico, objetivo, formato, tom, produtos desejados]

Sua tarefa:
[o que a ferramenta deve produzir]

Fontes e diretrizes:
[quais arquivos/fontes considerar e qual hierarquia seguir]

Formato de saida:
[estrutura exigida]

Restricoes:
- Nao invente fontes.
- Nao mude o publico-alvo.
- Nao simplifique alem do nivel pedido.
- Se algo estiver ausente nas fontes, sinalize.

Criterios de qualidade:
[clareza, progressao, evidencia, aplicabilidade, mobile-first, visual etc.]
```

## Prompt para Perplexity Pro

Use quando o usuario ainda precisa mapear fontes ou campo conceitual.

```text
Quero preparar uma aula sobre [TEMA] para [PUBLICO], com objetivo de [OBJETIVO].

Faca uma busca profunda para mapear:
1. conceitos essenciais;
2. principais controversias ou pontos de debate;
3. autores, diretrizes, revisoes ou fontes relevantes;
4. termos de busca recomendados;
5. lacunas ou riscos de simplificacao;
6. sugestao de estrutura didatica progressiva.

Priorize fontes confiaveis e traga links/referencias. Separe fatos consolidados, hipoteses e recomendacoes praticas. Nao transforme isso em aula ainda; quero uma base de pesquisa.
```

Quando o usuario quer baixa digitacao, use uma versao preenchida com o briefing inferido e peca confirmacao apenas dos pontos que mudariam a busca.

## Prompt para rodada hibrida de evidencias

Use quando a prioridade for montar o pacote de fontes antes de criar roteiro, slides ou ebook.

```text
Estou construindo uma aula/material didatico.

Contexto:
- Tema: [TEMA]
- Publico: [PUBLICO]
- Objetivo: [OBJETIVO]
- Tom/recorte: [TOM/RECORTE]

Quero uma rodada de pesquisa para sustentar a construcao do material, nao quero ainda a aula final.

Responda em formato organizado:
1. perguntas de pesquisa que voce conseguiu responder;
2. conceitos essenciais;
3. afirmacoes seguras, com fontes ou justificativa;
4. afirmacoes que exigem cautela;
5. controversias, limites ou pontos mal definidos;
6. exemplos didaticos aproveitaveis;
7. fontes/referencias/links prioritarios;
8. lacunas que exigem nova busca;
9. termos de busca recomendados para uma proxima rodada.

Regras:
- Nao invente fontes.
- Separe evidencia de interpretacao.
- Nao transforme isso em roteiro, slide ou apostila.
- Escreva pensando que o resultado sera auditado antes de entrar no material final.
```

## Prompt para Open Evidence

Use para saude, medicina, fisiologia, exercicio, risco ou recomendacao.

```text
Estou preparando material didatico sobre [TEMA] para [PUBLICO].

Pergunta principal:
[PERGUNTA CLINICA/CIENTIFICA]

Analise a evidencia disponivel considerando:
1. populacao/contexto;
2. desfechos relevantes;
3. nivel de confianca;
4. beneficios, riscos e limites;
5. pontos controversos;
6. como explicar isso de forma didatica sem exagerar conclusoes.

Retorne em formato util para criar aula: conceitos-chave, afirmacoes seguras, afirmacoes que exigem cautela, exemplos e referencias.
```

## Prompt para RAG com fontes proprias

Use quando o usuario tem livros, artigos, PDFs ou notas.

```text
Use apenas as fontes fornecidas para extrair conteudo sobre [TEMA/RECORTE].

Objetivo do material:
[OBJETIVO]

Extraia:
1. definicoes e conceitos essenciais;
2. argumentos ou mecanismos importantes;
3. exemplos aplicaveis;
4. trechos que sustentam o roteiro da aula;
5. limites, ressalvas ou contradicoes;
6. referencias internas das fontes usadas.

Nao gere o produto final ainda. Produza um pacote de evidencias organizado por topicos e indique o que cada trecho ajuda a explicar na aula.
```

## Prompt para NotebookLM com hierarquia de fontes

Use quando Perplexity, Open Evidence, RAG, PDFs ou livros geraram um corpus amplo.

```text
Estou construindo uma aula com slides e ebook mobile.

Use os arquivos enviados seguindo esta hierarquia:
1. Briefing, arquitetura logica e roteiro mestre definem objetivo, publico e progressao.
2. Fontes teoricas brutas sustentam conceitos, exemplos e afirmacoes.
3. Diretrizes definem linguagem, formato, visual, mobile-first e criterios de qualidade.

Tarefa:
Leia o corpus e produza uma sintese operacional para eu construir o material sem substituir as fontes originais.

Formato obrigatorio:
1. conceitos essenciais por bloco da aula;
2. afirmacoes seguras com nome da fonte de origem;
3. afirmacoes que exigem cautela;
4. exemplos didaticos aproveitaveis;
5. lacunas, conflitos ou pontos fracos do corpus;
6. sugestao de uso em slides;
7. sugestao de uso no ebook mobile.

Regras:
- Nao invente referencias.
- Nao trate diretrizes como fonte teorica.
- Preserve nuance e nao transforme tudo em resumo generico.
- Se uma afirmacao nao estiver bem sustentada, marque como cautela.
- Nao crie ainda slides nem ebook final.
```

## Diretriz didatica

Crie como documento-fonte para NotebookLM ou chat.

```text
# Diretriz Didatica

Tema: [TEMA]
Publico: [PUBLICO]
Objetivo final: [OBJETIVO]
Tom: [TOM]

Progressao obrigatoria:
1. Conceitualizar: [itens]
2. Contextualizar: [itens]
3. Problematizar: [itens]
4. Relacionar elementos: [itens]
5. Apresentar metodo/tecnica/habilidade: [itens]
6. Consolidar: [itens]

Regras:
- Cada bloco deve preparar o proximo.
- Evitar saltos logicos.
- Explicar termos antes de usa-los em decisoes complexas.
- Usar exemplos praticos quando o conceito for abstrato.
```

## Roteiro slide a slide

```text
Crie uma apresentacao sobre [TEMA] para [PUBLICO].

Siga esta estrutura:
Para cada slide, entregue:
1. numero do slide;
2. titulo;
3. mensagem central;
4. conteudo essencial;
5. sugestao visual;
6. nota do apresentador;
7. qual fonte/diretriz sustenta o slide.

Regras:
- Um slide deve defender uma ideia.
- Evite excesso de texto.
- Priorize progressao narrativa.
- Nao adicione topicos fora do roteiro mestre sem justificar.
```

## Diretriz editorial para ebook mobile

```text
# Diretriz Editorial - Ebook Mobile

Objetivo: transformar a aula em material de apoio legivel no celular.

Formato:
- capitulos curtos;
- paragrafos breves;
- subtitulos frequentes;
- boxes de resumo;
- checklists;
- exemplos praticos;
- perguntas frequentes;
- linguagem clara sem perder precisao.

Regras:
- O ebook nao deve parecer transcricao de aula.
- Cada tela deve ter uma ideia principal.
- Use listas quando melhorarem escaneabilidade.
- Destaque conceitos, passos e alertas.
- Mantenha coerencia com slides e roteiro mestre.
```

## Diretriz visual

```text
# Diretriz Visual

Mood: [clinico, profissional, editorial, academico, fitness, executivo, leve]
Publico: [PUBLICO]
Produto: [slides/ebook/html]

Regras visuais:
- hierarquia clara;
- pouco texto por tela/slide;
- contraste adequado;
- uso consistente de cores;
- graficos e infograficos apenas quando explicarem melhor;
- mobile-first quando for ebook ou HTML.

Evitar:
- visual generico;
- excesso de cards;
- imagens decorativas sem funcao;
- poluicao visual;
- fontes pequenas em mobile.
```

## Prompt de correcao sem perda de detalhes

Use quando uma IA precisa corrigir roteiro, diretriz, slide, ebook, HTML ou pacote de evidencias sem empobrecer a versao anterior.

```text
Vou te enviar uma versao anterior e uma lista de problemas a corrigir.

Tarefa:
Corrija os problemas apontados usando a versao anterior como base principal.

Regras obrigatorias:
- Nao resuma a versao anterior.
- Nao remova exemplos, transicoes, ressalvas, criterios, definicoes ou explicacoes uteis.
- Preserve ou aumente a densidade util do material.
- Se algum trecho precisar sair, liste o trecho removido e justifique.
- Se substituir uma explicacao, entregue uma alternativa de igual ou maior clareza.

Formato de saida:
1. versao corrigida;
2. o que foi preservado da versao anterior;
3. o que foi alterado;
4. o que foi removido e por que;
5. pontos que precisam de validacao humana.
```

## Prompt de revisao de output

```text
Revise este produto contra o briefing, roteiro mestre e diretrizes.

Avalie:
1. alinhamento ao objetivo;
2. progressao logica;
3. adequacao ao publico;
4. precisao das afirmacoes;
5. utilidade pratica;
6. qualidade visual/editorial;
7. problemas que exigem nova geracao.

Entregue:
- diagnostico curto;
- problemas por prioridade;
- correcoes recomendadas;
- prompt pronto para pedir nova versao.
```
