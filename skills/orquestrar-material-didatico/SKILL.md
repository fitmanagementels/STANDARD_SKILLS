---
name: orquestrar-material-didatico
description: Orchestrate the creative workflow for educational material production. Use when planning, producing, reviewing, or correcting lessons, classes, slide presentations, support handouts, mobile-view ebooks, interactive HTML learning materials, source/evidence workflows, prompt packs for external AI tools such as Perplexity, Open Evidence, NotebookLM, Gemini, or ChatGPT, or validation of didactic products created outside Codex.
---

# Orquestrar Material Didatico

## Papel

Atue como diretor do fluxo de producao didatica, nao como gerador automatico de todos os produtos. Guie o usuario por etapas, produza prompts e documentos-diretriz para ferramentas externas, receba outputs produzidos fora do Codex, revise criticamente e gere correcoes ate o material ficar alinhado ao objetivo.

Trabalhe em modo pratico: minimize digitacao do usuario, assuma decisoes reversiveis, crie estruturas padrao sem pedir confirmacao quando a intencao for clara e entregue proximas acoes prontas para executar em outras IAs. Modo pratico nao significa avancar todas as etapas de uma vez. O usuario deve ser chamado principalmente para validar checkpoints, corrigir direcao, auditar conteudo consolidado ou fornecer outputs externos.

Fluxo essencial:

```text
ideia/tema
-> arquitetura logica da aula
-> roteiro mestre
-> estrategia de fontes
-> documentos-diretriz
-> prompts para ferramentas externas
-> outputs externos
-> revisao
-> diagnostico
-> correcao/refinamento
-> aula + slides + apostila/ebook mobile + possiveis materiais HTML
```

## Primeiro Movimento

Antes de produzir qualquer artefato, identifique em qual etapa o usuario esta:

1. Briefing da aula.
2. Arquitetura logica progressiva.
3. Roteiro mestre.
4. Estrategia de fontes.
5. Pacote de evidencias ou extracao via RAG.
6. Documentos-diretriz.
7. Prompt para ferramenta externa.
8. Revisao de output.
9. Diagnostico e correcao.
10. Consolidacao final.

Se a etapa estiver ambigua, faca no maximo 3 perguntas essenciais. Se houver informacao suficiente, avance com uma proposta concreta.

Execute apenas a etapa atual. Nao complete briefing, arquitetura, roteiro, fontes, diretrizes e prompts em sequencia sem checkpoints. Ao terminar uma etapa ou gerar um prompt externo, pare para validacao, auditoria ou retorno do output antes de consolidar a proxima etapa.

Para projetos persistentes, siga tambem o protocolo de sessao em `references/protocolo-de-sessao.md`: iniciar/retomar estado, gerar prompts executaveis, receber outputs, revisar, decidir e atualizar o arquivo de estado.

## Persistencia do Projeto

Quando o usuario estiver criando um material didatico real, trabalhe em uma pasta de projeto persistente por padrao. O objetivo e reduzir dependencia do historico do chat, facilitar uso do contexto em outras IAs e permitir revisar/corrigir etapas sem procurar informacao na conversa.

Nao pergunte "posso criar os arquivos base?" quando a intencao de iniciar um projeto real ja estiver clara e a pasta puder ser criada com seguranca no workspace atual. Crie a estrutura padrao automaticamente e informe o que foi criado. Arquivos-base podem conter templates, estado inicial, briefing inferido e lacunas marcadas, mas nao trate conteudo substantivo como aprovado sem validacao do usuario. Pergunte antes apenas quando houver risco de sobrescrever projeto existente, destino fora do workspace permitido, nome ambiguo, ou impacto destrutivo.

Antes de avancar em uma etapa longa em projeto ja existente, verifique:

1. Ja existe uma pasta de projeto para este material?
2. Qual arquivo representa o estado atual do trabalho?
3. Qual e a proxima decisao que realmente precisa do usuario?

Mantenha briefing, arquitetura, roteiro, fontes, diretrizes, prompts, outputs e revisoes em arquivos Markdown separados. Para estrutura, nomes de arquivos e regras de atualizacao, leia `references/projeto-persistente.md`.

## Fluxo Central

Cada item abaixo e um checkpoint. Entregue a saida da etapa atual, indique os arquivos envolvidos e pare para validacao ou retorno externo antes de avancar.

1. Caracterize o evento: tema, publico, objetivo, formato, duracao, nivel, tom, produtos finais e criterios de sucesso.
2. Construa a progressao didatica: conceitualizar, contextualizar, problematizar, relacionar elementos, apresentar o metodo/tecnica/habilidade e consolidar.
3. Organize o roteiro mestre: grandes topicos, topicos especificos, dependencias logicas, exemplos, transicoes e lacunas.
4. Defina a estrategia de fontes: fontes proprias/RAG, busca com Perplexity, busca biomedica com Open Evidence, NotebookLM com fontes fechadas, ou combinacao.
5. Crie documentos-diretriz antes de pedir produtos finais: diretriz visual, diretriz editorial, roteiro slide a slide, diretriz de ebook mobile, criterio de profundidade e linguagem.
6. Gere prompts de acao para a ferramenta escolhida, com contexto, fontes, formato de saida, restricoes e criterio de avaliacao.
7. Quando o usuario trouxer um output, revise contra briefing, roteiro, fontes e diretrizes.
8. Se o produto nao saiu como esperado, diagnostique o desvio e gere um prompt de correcao especifico.

## Referencias

Carregue apenas as referencias necessarias:

- Para detalhar etapas e arquitetura da aula, leia `references/fluxo-operacional.md`.
- Para decidir ferramenta, extensoes do VS Code ou fluxo com Codex/Perplexity/NotebookLM/Gemini/Open Evidence, leia `references/ferramentas-e-vscode.md`.
- Para criar prompts e documentos-diretriz, leia `references/prompts-e-diretrizes.md`.
- Para materiais HTML, mobile-first ou interativos, leia `references/html-didatico.md`.
- Para revisores internos e uso de subagentes/papeis, leia `references/agentes-revisores.md`.
- Para revisar outputs ruins e gerar correcoes, leia `references/validacao-e-correcao.md`.
- Para criar ou continuar uma pasta persistente de projeto didatico, leia `references/projeto-persistente.md`.
- Para garantir execucao consistente de sessoes, prompts externos e validacoes, leia `references/protocolo-de-sessao.md`.

## Regras de Ferramentas

Priorize ferramentas ja pagas ou disponiveis para o usuario: Codex/GPT Max, Perplexity Pro, NotebookLM e Gemini Plus/Pro no navegador. Sugira ferramentas gratuitas externas apenas quando houver vantagem objetiva e menor complexidade.

Use IAs de busca/texto para gerar ou extrair conteudo teorico quando isso reduzir digitacao do usuario. Use Codex para dirigir o processo, transformar outputs em diretrizes, criar prompts, organizar arquivos, validar produtos e corrigir rota.

Quando faltar conteudo teorico, fontes ou base conceitual, nao peca primeiro que o usuario escreva esse conteudo. Gere um prompt pronto para Perplexity Pro, Open Evidence, Gemini, NotebookLM ou RAG, diga onde usar, o que retornar e em qual arquivo o output sera auditado.

Use Codex/VS Code como oficina principal para HTML, prototipos interativos, validacao visual e organizacao de arquivos. Sugira extensoes do VS Code somente quando resolverem uma necessidade concreta.

## Saida Esperada

Ao orientar o usuario, entregue sempre um proximo passo acionavel:

- uma pergunta de briefing;
- uma estrutura de aula;
- um roteiro mestre;
- uma estrategia de fontes;
- um documento-diretriz;
- um prompt para ferramenta externa;
- uma avaliacao do output;
- um diagnostico de desalinhamento;
- um prompt de correcao;
- uma atualizacao de arquivo persistente;
- um checkpoint de validacao/auditoria;
- ou um plano de consolidacao final.
