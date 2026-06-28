# NotebookLM e Hierarquia de Fontes

Use esta referencia quando houver muitas fontes brutas, respostas longas de Perplexity/Open Evidence, PDFs, livros, artigos, outputs de RAG ou um corpus teorico grande demais para o Codex resumir com seguranca.

## Principio

NotebookLM deve ser tratado como motor de leitura e sintese quando o corpus for amplo. Codex deve atuar como bibliotecario, arquiteto didatico, editor e revisor.

Regra central: nao substitua fontes brutas por uma fonte unificada criada pelo Codex. Preserve o corpus, organize a hierarquia, gere prompts e valide o output do NotebookLM.

## Quando usar

Use este fluxo quando houver:

- varias respostas externas sobre o mesmo tema;
- artigos, livros, PDFs ou notas longas;
- necessidade de rastrear de onde veio cada afirmacao;
- risco de perder nuances ao resumir tudo em um arquivo unico;
- producao de slides/ebook que precisa respeitar fontes e diretrizes.

Nao use este fluxo para uma resposta curta, uma fonte unica pequena ou uma pergunta simples.

## Estrutura de arquivos

```text
03-fontes-e-evidencias.md
04-diretrizes/diretriz-notebooklm.md
05-prompts/notebooklm-hierarquia-fontes.md
06-outputs-externos/perplexity-[tema].md
06-outputs-externos/open-evidence-[tema].md
06-outputs-externos/rag-[tema].md
07-revisoes/revisao-notebooklm-[produto].md
```

`03-fontes-e-evidencias.md` deve funcionar como mapa curado, nao como substituto das fontes brutas. Ele pode conter perguntas, lista de fontes, status, achados validados, lacunas e cautelas.

## Hierarquia para subir no NotebookLM

Suba os arquivos nesta logica:

1. Briefing e objetivo da aula.
2. Arquitetura logica e roteiro mestre.
3. Manifesto/mapa de fontes.
4. Fontes teoricas brutas: Perplexity, Open Evidence, PDFs, livros, RAG.
5. Diretrizes didaticas, editoriais, visuais e de formato.

Explique no prompt que os arquivos de fonte sustentam conteudo teorico, enquanto diretrizes definem forma, publico, linguagem e estrutura.

## Manifesto de fontes

Use este formato em `03-fontes-e-evidencias.md` ou arquivo dedicado:

```markdown
## Manifesto de fontes

| Arquivo | Origem | Tema | Status | Prioridade | Uso previsto | Cautelas |
|---|---|---|---|---|---|---|
| 06-outputs-externos/perplexity-carga.md | Perplexity | conceitos gerais | Bruto | Media | mapear conceitos | revisar fontes |
| 06-outputs-externos/open-evidence-carga.md | Open Evidence | evidencia aplicada | Auditado | Alta | afirmacoes seguras | evitar prescricao clinica |
```

Status sugeridos: `Bruto`, `Auditado`, `Validado`, `Usar com cautela`, `Descartado`.

## Prompt base para NotebookLM

```text
Estou construindo material didatico com aula, slides e ebook mobile.

Use os arquivos enviados seguindo esta hierarquia:
1. Briefing, arquitetura e roteiro definem objetivo, publico e progressao didatica.
2. Fontes teoricas brutas sustentam conceitos, exemplos e afirmacoes.
3. Diretrizes definem formato, linguagem, visual e criterio de qualidade.

Tarefa:
Leia o corpus sem substituir as fontes originais. Produza uma sintese operacional para construir o material.

Formato:
1. conceitos essenciais por bloco da aula;
2. afirmacoes seguras com nome da fonte de origem;
3. afirmacoes que exigem cautela;
4. exemplos didaticos aproveitaveis;
5. lacunas ou conflitos entre fontes;
6. sugestao de como isso sustenta slides e ebook.

Regras:
- Nao invente referencias.
- Nao trate diretrizes como fonte teorica.
- Nao ignore arquivos brutos por serem longos.
- Se uma afirmacao nao estiver bem sustentada, marque como cautela.
- Preserve nuance; nao transforme tudo em resumo generico.
```

## O que Codex pode consolidar

Codex pode atualizar:

- manifesto de fontes;
- perguntas investigadas;
- achados curtos validados;
- lacunas;
- cautelas;
- prompts de nova rodada;
- revisoes do output do NotebookLM.

Codex nao deve criar uma fonte teorica extensa que tente substituir todas as fontes brutas. Se uma sintese longa for necessaria, peça ao NotebookLM e revise o resultado antes de incorporar.

## Checkpoint obrigatorio

Antes de consolidar conteudo teorico em arquivo principal, diga:

```text
Vou manter as fontes brutas preservadas e atualizar apenas o mapa/achados validados.

Entrara no arquivo:
- ...

Continuara apenas como fonte bruta:
- ...

Preciso da sua validacao antes de transformar isso em roteiro, slides ou ebook.
```
