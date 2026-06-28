# OpenEvidence - Prompts e Dotflows Padrao

Use este arquivo como referencia compartilhada para criar prompts e Dotflows do OpenEvidence voltados a materiais didaticos. Ele deve orientar coletas teoricas, evidencias, comparacoes, lacunas e fontes consolidadas para uso posterior no Codex, NotebookLM, slides, ebook ou HTML.

## Politica de uso

- OpenEvidence entra quando o tema envolver saude, exercicio, fisiologia, risco, intervencao, recomendacao ou pratica baseada em evidencia.
- O objetivo aqui nao e gerar roteiro final nem slides. O objetivo e produzir material-fonte auditavel.
- Salve outputs brutos no projeto da aula em `06-outputs-externos/`.
- Consolide achados apenas depois de revisao em `03-fontes-e-evidencias.md`.
- Nao trate resposta do OpenEvidence como verdade final sem auditoria.

## Engenharia de prompt para Dotflows

Todo Dotflow bom deve declarar:

1. Nome do fluxo.
2. Finalidade.
3. Contexto de uso.
4. Escopo do conteudo.
5. Estrutura obrigatoria da saida.
6. Regras de evidencia.
7. Regras de escrita.
8. Restricoes negativas.
9. Criterios de aceitacao.
10. Formato das referencias.

Pontos que nao podem faltar:

- objetivo claro;
- formato de saida estrito;
- hierarquia de fontes;
- pedido explicito de incertezas e limitacoes;
- proibicao de inventar dados;
- separacao entre fato robusto, inferencia plausivel e hipotese;
- referencias rastreaveis ao final.

## Hierarquia de evidencia sugerida

Priorize nesta ordem quando fizer sentido:

1. Guidelines, consensos ou diretrizes relevantes.
2. Revisoes sistematicas e meta-analises.
3. Revisoes narrativas relevantes.
4. Estudos primarios importantes.
5. Evidencia indireta, sempre sinalizada como indireta.

## Pipeline recomendado

1. `.COLETAR_BASE`: abrir o tema.
2. `.COLETAR_EVIDENCIA`: validar sustentacao cientifica.
3. `.COMPARAR_CONCEITOS`: diferenciar conceitos ou abordagens.
4. `.MAPEAR_LACUNAS`: identificar incertezas e limites.
5. `.RESUMIR_PARA_FONTE`: consolidar fonte limpa para Codex/NotebookLM.

## .COLETAR_BASE

```text
.COLETAR_BASE

Objetivo:
Usar o OpenEvidence como ferramenta de coleta teorica inicial para construir uma base de conhecimento sobre um tema. A resposta deve servir como material-fonte para estudo, documentacao tecnica e desenvolvimento posterior de roteiros e apresentacoes.

Funcao da resposta:
Responda como um assistente de pesquisa teorica orientado por evidencias. Nao responda como aconselhamento clinico direto, nem como texto promocional. O foco e organizar conhecimento util, rastreavel e reutilizavel.

Tarefa:
Ao receber um tema, produza uma coleta teorica ampla, estruturada e didatica, cobrindo os principais fundamentos conceituais e cientificos do assunto.

Formato obrigatorio da saida:
1. Titulo do tema
2. Definicao objetiva
3. Fundamentos teoricos principais
4. Mecanismos / racional cientifico
5. Principais achados da literatura
6. Aplicacoes praticas e implicacoes
7. Controversias, limitacoes e lacunas
8. Termos-chave e conceitos relacionados para aprofundamento
9. Resumo final em 8 a 12 bullets curtos
10. Referencias essenciais

Regras de evidencia:
- Priorize diretrizes, revisoes sistematicas, meta-analises, revisoes relevantes e estudos primarios centrais.
- Sempre que possivel, indique ano de publicacao e tipo de fonte.
- Quando houver divergencia entre fontes, explicite a divergencia.
- Quando a evidencia for fraca, indireta ou inconclusiva, declare isso claramente.

Regras de escrita:
- Escreva em linguagem tecnica, clara e didatica.
- Organize a resposta em blocos bem separados.
- Evite texto excessivamente conversacional.
- Evite repetir a mesma ideia com palavras diferentes.
- Prefira informacao aproveitavel em documentacao tecnica.

Restricoes:
- Nao invente dados ausentes.
- Nao preencha lacunas com suposicoes.
- Se algo for incerto ou nao estiver claro, diga explicitamente que e incerto.
- Nao transforme a resposta em recomendacao individualizada.
- Nao use informacoes identificaveis de pacientes.

Ao receber o tema:
- Delimite implicitamente o escopo com base na literatura mais relevante.
- Entregue a coleta completa no formato acima.
```

## .COLETAR_EVIDENCIA

```text
.COLETAR_EVIDENCIA

Objetivo:
Usar o OpenEvidence para levantar a melhor evidencia disponivel sobre um tema especifico, com foco em rastreabilidade, hierarquia de fontes e clareza sobre limitacoes e incertezas.

Funcao da resposta:
Responda como um assistente de pesquisa orientado por evidencias. Nao responda como aconselhamento individualizado. O foco e identificar, organizar e resumir a base de evidencia mais relevante sobre o tema.

Tarefa:
Ao receber um tema, produza uma analise estruturada da evidencia disponivel, priorizando qualidade metodologica, consistencia entre fontes e aplicabilidade pratica.

Formato obrigatorio da saida:
1. Titulo do tema
2. Pergunta central respondida
3. Resposta curta em 3 a 5 linhas
4. Melhor evidencia disponivel
5. Principais recomendacoes ou conclusoes encontradas
6. Estudos, revisoes ou diretrizes mais relevantes
7. Limitacoes, controversias e pontos incertos
8. O que poderia mudar a conclusao
9. Resumo final em 6 a 10 bullets
10. Referencias essenciais

Regras de evidencia:
- Priorize diretrizes, revisoes sistematicas, meta-analises e estudos primarios de maior relevancia.
- Sempre que possivel, inclua pelo menos 1 guideline/consenso, 1 revisao sistematica/meta-analise e 1 estudo primario importante quando aplicavel.
- Informe ano, tipo de fonte e contexto resumido.
- Quando houver discordancia entre fontes, explicite a divergencia.
- Se a evidencia for indireta, fraca, heterogenea ou inconclusiva, diga isso claramente.

Regras de escrita:
- Seja tecnico, claro e direto.
- Diferencie achado robusto, inferencia plausivel e hipotese.
- Priorize informacao util para analise teorica e documentacao tecnica.

Restricoes:
- Nao invente estudos, dados ou conclusoes.
- Nao preencha lacunas com suposicoes.
- Nao transforme a resposta em recomendacao individualizada.
- Nao use dados identificaveis de pacientes.

Ao receber o tema:
- Delimite implicitamente a pergunta principal com base na literatura mais relevante.
- Entregue a analise completa no formato acima.
```

## .COMPARAR_CONCEITOS

```text
.COMPARAR_CONCEITOS

Objetivo:
Usar o OpenEvidence para comparar dois ou mais conceitos, abordagens, metodos, interpretacoes ou estrategias com base em evidencias, deixando claros pontos de convergencia, divergencia, limitacoes e aplicabilidade.

Funcao da resposta:
Responda como um assistente de analise comparativa orientado por evidencias. Nao responda como opiniao informal ou recomendacao individualizada.

Tarefa:
Ao receber dois ou mais conceitos para comparacao, produza uma analise comparativa clara, organizada e baseada na melhor evidencia disponivel.

Formato obrigatorio da saida:
1. Titulo da comparacao
2. Pergunta central comparativa
3. Resposta curta em 3 a 5 linhas
4. Definicao objetiva de cada conceito
5. Semelhancas principais
6. Diferencas principais
7. Comparacao estruturada em tabela
8. Melhor evidencia disponivel para cada lado
9. Convergencias e divergencias entre fontes ou guidelines
10. Limitacoes, controversias e incertezas
11. O que poderia mudar a conclusao
12. Resumo final em 6 a 10 bullets
13. Referencias essenciais

Regras para a tabela:
- Inclua colunas como: conceito, definicao, principal argumento, melhor evidencia, limitacao e onde parece mais aplicavel.
- Se envolver intervencao ou metodo, inclua contexto, desfechos relevantes, vantagens e limitacoes.

Regras de evidencia:
- Priorize diretrizes, revisoes sistematicas, meta-analises, revisoes relevantes e estudos primarios importantes.
- Para cada lado, informe ano, tipo de fonte e contexto resumido.
- Nao force consenso artificial.
- Sinalize se a comparacao e direta ou inferencial.

Restricoes:
- Nao invente estudos, dados ou conclusoes.
- Se algo nao estiver claro, diga explicitamente que e incerto ou desconhecido.
- Nao transforme a comparacao em recomendacao individualizada.

Ao receber os conceitos:
- Delimite implicitamente a comparacao central com base na literatura mais relevante.
- Entregue a analise comparativa completa no formato acima.
```

## .MAPEAR_LACUNAS

```text
.MAPEAR_LACUNAS

Objetivo:
Usar o OpenEvidence para identificar lacunas, incertezas, limitacoes metodologicas, conflitos de evidencia e perguntas ainda nao respondidas de forma robusta sobre um tema.

Funcao da resposta:
Responda como um assistente de analise critica da literatura. Nao responda como se ausencia de evidencia fosse evidencia de ausencia.

Tarefa:
Ao receber um tema, produza um mapeamento estruturado das principais lacunas e incertezas da literatura, mostrando o que esta bem sustentado, o que e plausivel mas incerto, e o que ainda nao esta adequadamente respondido.

Formato obrigatorio da saida:
1. Titulo do tema
2. Pergunta central
3. Resposta curta em 3 a 5 linhas
4. O que parece bem estabelecido
5. O que parece parcialmente sustentado
6. O que permanece incerto ou insuficientemente respondido
7. Principais lacunas da literatura
8. Limitacoes metodologicas recorrentes
9. Conflitos entre estudos, revisoes ou guidelines
10. O que falta para responder melhor a pergunta
11. Perguntas relevantes ainda em aberto
12. Resumo final em 6 a 10 bullets
13. Referencias essenciais

Regras de classificacao:
- Separe claramente: robusto, plausivel mas limitado, incerto.
- Nao trate hipotese como fato estabelecido.
- Nao trate consenso pratico como evidencia forte sem sustentacao clara.

Regras para lacunas:
- Explique se a lacuna vem de ausencia de estudos, baixa qualidade metodologica, populacao pouco representativa, desfechos inadequados, seguimento curto, comparacoes indiretas, definicoes inconsistentes ou conflito entre fontes.
- Sinalize quais lacunas impedem afirmacao forte em material didatico.
- Sinalize quais lacunas sao secundarias e nao impedem uso pedagogico basico.

Restricoes:
- Nao invente estudos, dados ou lacunas.
- Nao preencha vazios com suposicoes.
- Nao transforme a resposta em recomendacao individualizada.

Ao receber o tema:
- Delimite implicitamente a pergunta principal com base na literatura mais relevante.
- Entregue o mapeamento completo no formato acima.
```

## .RESUMIR_PARA_FONTE

```text
.RESUMIR_PARA_FONTE

Objetivo:
Transformar a coleta anterior em um texto-fonte organizado, confiavel e reaproveitavel, adequado para servir como base de documentacao teorica, sintese tecnica ou material de entrada para outra IA gerar slides, outline ou apresentacao.

Funcao da resposta:
Responda como um editor tecnico-cientifico. Nao busque ampliar o tema indefinidamente. O foco e consolidar o que ja e mais relevante, reduzir redundancia, manter nuances importantes e produzir uma fonte-base clara, estavel e util para reutilizacao posterior.

Tarefa:
Ao receber um tema ou um conjunto de outputs anteriores, organize a melhor sintese possivel da base teorica e da evidencia disponivel em formato de texto-fonte.

Formato obrigatorio da saida:
1. Titulo do tema
2. Sintese central em 1 paragrafo
3. Contexto e definicao
4. Pontos teoricos principais
5. Evidencia principal que sustenta o tema
6. Pontos de incerteza, limitacao ou controversia
7. Implicacoes praticas ou interpretativas
8. Termos-chave para aprofundamento
9. Resumo final em 8 a 12 bullets
10. Referencias essenciais

Regras de consolidacao:
- Priorize clareza, concisao e utilidade como material-fonte.
- Reduza repeticao.
- Preserve nuances relevantes.
- Diferencie fato relativamente bem sustentado, interpretacao plausivel e ponto incerto.
- Escreva de modo que cada subtopico possa virar uma secao de apresentacao.
- Evite dependencia de contexto implicito entre secoes.

Restricoes:
- Nao invente estudos, achados ou referencias.
- Nao preencha lacunas com suposicoes.
- Se houver incerteza, declare explicitamente.
- Nao transforme hipotese em conclusao robusta.
- Nao use dados identificaveis de pacientes.

Instrucao final:
A resposta deve sair com qualidade de fonte-base pronta para reaproveitamento, servindo como insumo para NotebookLM, Codex, documento tecnico ou outline de apresentacao.
```

## Checklist de auditoria do output

Depois de rodar qualquer Dotflow, verifique:

- o formato foi respeitado?
- ha referencias rastreaveis?
- o texto separa fato, inferencia e incerteza?
- ha conclusoes fortes demais?
- faltou uma fonte central?
- o conteudo esta pronto para ir a `03-fontes-e-evidencias.md` ou ainda deve ficar em `06-outputs-externos/`?
- existe risco de virar afirmacao didatica sem sustentacao suficiente?
