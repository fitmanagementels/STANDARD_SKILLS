---
name: orquestrar-material-didatico
description: Orchestrate the creative workflow for educational material production. Use when planning, producing, reviewing, correcting, versioning, or protecting against content regression in lessons, classes, slide presentations, support handouts, mobile-view ebooks, interactive HTML learning materials, source/evidence workflows, OpenEvidence Dotflows, shared didactic libraries/templates/prompts, prompt packs for external AI tools such as Perplexity, Open Evidence, NotebookLM, Gemini, or ChatGPT, or validation of didactic products created outside Codex.
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
-> curadoria hibrida de evidencias
-> hierarquia de fontes para NotebookLM quando o corpus for amplo
-> roteiro de conteudo para slides
-> prompt de geracao dos slides
-> revisao objetiva dos slides
-> roteiro de conteudo para ebook
-> prompt de geracao do ebook
-> revisao objetiva do ebook
-> outputs externos
-> correcao/refinamento quando necessario
-> controle de regressao de conteudo
-> aula + slides + apostila/ebook mobile + possiveis materiais HTML
```

## Primeiro Movimento

Antes de produzir qualquer artefato, identifique em qual etapa o usuario esta:

1. Briefing da aula.
2. Arquitetura logica progressiva.
3. Roteiro mestre.
4. Estrategia de fontes.
5. Curadoria hibrida de evidencias, busca ou extracao via RAG.
6. Hierarquia de fontes e manifesto para NotebookLM.
7. Pacote de evidencias validado.
8. Roteiro de conteudo para slides.
9. Prompt de geracao dos slides.
10. Revisao objetiva dos slides.
11. Roteiro de conteudo para ebook.
12. Prompt de geracao do ebook.
13. Revisao objetiva do ebook.
14. Diagnostico e correcao.
15. Controle de regressao de conteudo entre versoes.
16. Consolidacao final.

Se a etapa estiver ambigua, faca no maximo 3 perguntas essenciais. Se houver informacao suficiente, avance com uma proposta concreta.

Execute apenas a etapa atual. Nao complete briefing, arquitetura, roteiro, fontes, diretrizes e prompts em sequencia sem checkpoints. Ao terminar uma etapa ou gerar um prompt externo, pare para validacao, auditoria ou retorno do output antes de consolidar a proxima etapa.

Depois que as fontes/corpus minimo estiverem adquiridos, entre em modo produtivo: siga a trilha aprovada, produza roteiro de conteudo para slides/ebook e gere prompts de artefato sem reinventar o fluxo. Revisoes deixam de ser exploratorias e passam a ser objetivas: por padrao, no maximo uma revisao antes de gerar e uma revisao depois do output. Rodadas extras so quando o usuario pedir ou houver desalinhamento grave de objetivo, publico, fonte ou formato.

Para projetos persistentes, siga tambem o protocolo de sessao em `references/protocolo-de-sessao.md`: iniciar/retomar estado, gerar prompts executaveis, receber outputs, revisar, decidir e atualizar o arquivo de estado.

## Persistencia do Projeto

Quando o usuario estiver criando um material didatico real, trabalhe em uma pasta de projeto persistente por padrao. O objetivo e reduzir dependencia do historico do chat, facilitar uso do contexto em outras IAs e permitir revisar/corrigir etapas sem procurar informacao na conversa.

Quando houver biblioteca-mae com templates, diretrizes, prompts, fontes ou assets compartilhados, trate essas pastas como referencias por padrao. Edite-as somente quando o usuario pedir explicitamente para mudar um padrao compartilhado ou consolidar um aprendizado reutilizavel.

Nao pergunte "posso criar os arquivos base?" quando a intencao de iniciar um projeto real ja estiver clara e a pasta puder ser criada com seguranca no workspace atual. Crie a estrutura padrao automaticamente e informe o que foi criado. Arquivos-base podem conter templates, estado inicial, briefing inferido e lacunas marcadas, mas nao trate conteudo substantivo como aprovado sem validacao do usuario. Pergunte antes apenas quando houver risco de sobrescrever projeto existente, destino fora do workspace permitido, nome ambiguo, ou impacto destrutivo.

Antes de avancar em uma etapa longa em projeto ja existente, verifique:

1. Ja existe uma pasta de projeto para este material?
2. Qual arquivo representa o estado atual do trabalho?
3. Qual e a proxima decisao que realmente precisa do usuario?

Mantenha briefing, arquitetura, roteiro, fontes, diretrizes, prompts, outputs e revisoes em arquivos Markdown separados. Para estrutura, nomes de arquivos e regras de atualizacao, leia `references/projeto-persistente.md`.

Antes de criar qualquer arquivo novo, verifique se ja existe arquivo canonico para aquela funcao e atualize-o. Crie novo arquivo apenas para output bruto externo, versao que precisa ser preservada, revisao formal necessaria, produto final/intermediario, HTML/assets, ou prompt com funcao realmente diferente.

## Fluxo Central

Cada item abaixo e um checkpoint. Entregue a saida da etapa atual, indique os arquivos envolvidos e pare para validacao ou retorno externo antes de avancar.

1. Caracterize o evento: tema, publico, objetivo, formato, duracao, nivel, tom, produtos finais e criterios de sucesso.
2. Construa a progressao didatica: conceitualizar, contextualizar, problematizar, relacionar elementos, apresentar o metodo/tecnica/habilidade e consolidar.
3. Organize o roteiro mestre: grandes topicos, topicos especificos, dependencias logicas, exemplos, transicoes e lacunas.
4. Defina a estrategia de fontes: fontes proprias/RAG, busca com Perplexity, busca biomedica com Open Evidence, NotebookLM com fontes fechadas, ou combinacao.
5. Acione a curadoria hibrida de evidencias: gerar perguntas de pesquisa, prompts externos, receber outputs, auditar, corrigir e consolidar o pacote de evidencias.
6. Quando houver muitos outputs brutos, artigos, livros, PDFs ou respostas longas, preserve o corpus bruto, crie manifesto/hierarquia de fontes e use NotebookLM como motor de leitura/sintese. Nao tente substituir esse corpus por uma fonte unificada feita no Codex.
7. Para slides, produza um roteiro de conteudo slide a slide suficientemente acionavel: titulo, mensagem central, conteudo essencial, exemplo, sugestao visual, fonte/base e nota do apresentador. Valide esse roteiro e gere o prompt de slides.
8. Revise slides de forma objetiva: alinhamento, progressao, excesso de texto, adequacao visual e acao corretiva. Nao abra varias rodadas de revisao antes de existir output concreto.
9. Para ebook, produza roteiro de secoes mobile-first vinculado ao roteiro de slides: objetivo da secao, ideia central, conteudo, exemplo, box/resumo e relacao com os slides.
10. Gere prompts de acao para a ferramenta escolhida, com contexto, fontes, formato de saida, restricoes e criterio de avaliacao.
11. Quando o usuario trouxer um output, revise contra briefing, roteiro, fontes e diretrizes.
12. Se o produto nao saiu como esperado, diagnostique o desvio e gere um prompt de correcao especifico.
13. Antes de substituir uma versao detalhada por uma versao corrigida, compare as duas e proteja conteudo util contra perda, simplificacao excessiva ou reducao de densidade.

## Referencias

Carregue apenas as referencias necessarias:

- Para detalhar etapas e arquitetura da aula, leia `references/fluxo-operacional.md`.
- Para decidir ferramenta, extensoes do VS Code ou fluxo com Codex/Perplexity/NotebookLM/Gemini/Open Evidence, leia `references/ferramentas-e-vscode.md`.
- Para pesquisar, revisar, corrigir e organizar fontes/evidencias em fluxo hibrido, leia `references/curadoria-de-evidencias.md`.
- Para preservar corpus bruto, organizar manifesto/hierarquia de fontes e usar NotebookLM sem transformar Codex em RAG improvisado, leia `references/notebooklm-hierarquia-fontes.md`.
- Para criar ou adaptar Dotflows do OpenEvidence para coleta teorica, evidencias, comparacoes, lacunas e fontes para NotebookLM/Codex, leia `references/open-evidence-dotflows.md`.
- Para criar prompts e documentos-diretriz, leia `references/prompts-e-diretrizes.md`.
- Para materiais HTML, mobile-first ou interativos, leia `references/html-didatico.md`.
- Para revisores internos e uso de subagentes/papeis, leia `references/agentes-revisores.md`.
- Para revisar outputs ruins e gerar correcoes, leia `references/validacao-e-correcao.md`.
- Para comparar versoes e evitar que uma correcao deixe um arquivo detalhado mais pobre, leia `references/controle-regressao-conteudo.md`.
- Para criar ou continuar uma pasta persistente de projeto didatico, leia `references/projeto-persistente.md`.
- Para usar biblioteca-mae, templates, diretrizes, prompts, fontes recorrentes e assets compartilhados sem editar padroes indevidamente, leia `references/biblioteca-mae.md`.
- Para garantir execucao consistente de sessoes, prompts externos e validacoes, leia `references/protocolo-de-sessao.md`.

## Regras de Ferramentas

Priorize ferramentas ja pagas ou disponiveis para o usuario: Codex/GPT Max, Perplexity Pro, NotebookLM e Gemini Plus/Pro no navegador. Sugira ferramentas gratuitas externas apenas quando houver vantagem objetiva e menor complexidade.

Use IAs de busca/texto para gerar ou extrair conteudo teorico quando isso reduzir digitacao do usuario. Use Codex para dirigir o processo, transformar outputs em diretrizes, criar prompts, organizar arquivos, validar produtos e corrigir rota.

Quando faltar conteudo teorico, fontes ou base conceitual, nao peca primeiro que o usuario escreva esse conteudo. Gere um prompt pronto para Perplexity Pro, Open Evidence, Gemini, NotebookLM ou RAG, diga onde usar, o que retornar e em qual arquivo o output sera auditado.

Nao transforme um conjunto grande de fontes brutas em uma "fonte unificada" substitutiva. Para corpus amplo, preserve outputs brutos, crie mapa/manifesto e use NotebookLM para leitura e sintese. Codex pode consolidar achados curtos e validados em `03-fontes-e-evidencias.md`, mas nao deve apagar a rastreabilidade nem comprimir a teoria extensa sem auditoria.

Use Codex/VS Code como oficina principal para HTML, prototipos interativos, validacao visual e organizacao de arquivos. Sugira extensoes do VS Code somente quando resolverem uma necessidade concreta.

## Saida Esperada

Ao orientar o usuario, entregue sempre um proximo passo acionavel:

- uma pergunta de briefing;
- uma estrutura de aula;
- um roteiro mestre;
- uma estrategia de fontes;
- um pacote de curadoria de evidencias;
- um documento-diretriz;
- um prompt para ferramenta externa;
- uma avaliacao do output;
- um diagnostico de desalinhamento;
- um prompt de correcao;
- um relatorio de regressao de conteudo;
- uma atualizacao de arquivo persistente;
- um checkpoint de validacao/auditoria;
- ou um plano de consolidacao final.
