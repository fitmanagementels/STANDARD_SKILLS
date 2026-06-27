# Ferramentas e VS Code

Use esta referencia para decidir quais ferramentas usar e quando sugerir extensoes do VS Code.

## Politica principal

Priorize o arsenal ja disponivel:

1. Codex no VS Code / GPT Max.
2. Perplexity Pro.
3. NotebookLM.
4. Gemini Plus/Pro no navegador.
5. Open Evidence quando o tema exigir evidencia biomédica ou de saude.

Sugira ferramenta gratuita externa somente quando:

- resolver uma limitacao concreta;
- for claramente melhor para o produto atual;
- nao exigir assinatura nova;
- nao aumentar demais a complexidade;
- tiver um papel definido no fluxo.

Nao recomende ferramenta nova por curiosidade.

## Divisao de trabalho

### Codex / GPT Max

Use como diretor do processo e oficina tecnica:

- organizar etapas;
- criar prompts;
- criar documentos-diretriz;
- revisar outputs;
- diagnosticar problemas;
- criar materiais HTML;
- ajustar arquivos no VS Code;
- validar estrutura e responsividade.

### Perplexity Pro

Use para busca exploratoria e sintese inicial:

- mapear literatura;
- levantar linhas de debate;
- descobrir termos e autores;
- comparar abordagens;
- gerar lista inicial de fontes.

Nao trate sintese do Perplexity como verdade final quando o tema for sensivel. Peca fontes e revise.

### Open Evidence

Use para temas de saude, medicina, exercicio, fisiologia, risco, intervencao, recomendacao ou pratica baseada em evidencia.

Peça resposta com:

- pergunta clara;
- nivel de evidencia;
- recomendacoes e limites;
- populacao/contexto;
- ressalvas.

### NotebookLM

Use quando houver fontes fechadas:

- artigos;
- livros;
- PDFs;
- notas proprias;
- roteiro mestre;
- diretrizes visuais/editoriais;
- criterios de validacao.

Trate documentos-diretriz como fontes do NotebookLM. Isso costuma funcionar melhor do que depender apenas de um prompt longo.

### Gemini Plus/Pro

Use como apoio:

- brainstorming;
- reescrita;
- alternativas criativas;
- analise multimodal;
- comparacao de versoes;
- exploracao com janela longa.

Nao usar como ferramenta principal se NotebookLM ou Codex resolvem melhor a etapa.

## VS Code como oficina

O usuario tem pouca familiaridade com VS Code/Codex. Ao sugerir uma acao no VS Code, forneca passo a passo simples.

Antes de sugerir extensao, descubra ou peca para listar extensoes instaladas:

```bash
code --list-extensions
```

Sugira extensao somente para resolver um problema concreto.

### Extensoes candidatas

- Live Preview, da Microsoft: visualizar HTML dentro do VS Code.
- Prettier: formatar HTML, CSS, JS, Markdown e arquivos relacionados.
- markdownlint: revisar consistencia de documentos Markdown.
- Playwright Test for VSCode: testar interacao, layout e responsividade quando o HTML for mais sofisticado.

### Regras de recomendacao

- HTML simples: Live Preview + Prettier.
- HTML interativo/mobile: Live Preview + Prettier; considerar Playwright.
- Documentos `.md`: markdownlint se a consistencia estiver atrapalhando.
- Iniciante: explicar onde clicar, comando a rodar e como saber se funcionou.
- Evitar extensoes redundantes ou pouco consolidadas.

## Saida ao escolher ferramenta

Quando recomendar ferramenta, responda:

1. Ferramenta escolhida.
2. Por que ela e melhor nesta etapa.
3. O que o usuario deve colar/subir nela.
4. Prompt pronto.
5. O que deve voltar para o Codex para revisao.
