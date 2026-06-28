# Curadoria de Evidencias

Use esta referencia quando o projeto precisar construir base teorica, fontes, afirmacoes seguras ou exemplos sustentados por pesquisa.

## Sumario

- `Papel`: funcao do curador hibrido.
- `Ciclo da curadoria`: rotina por rodada.
- `Quando usar cada ferramenta`: escolha entre Perplexity, Open Evidence, RAG, NotebookLM e Gemini.
- `Saida da rodada de pesquisa`: formato do prompt/acao.
- `Auditoria do output externo`: matriz de revisao.
- `Consolidacao em 03-fontes-e-evidencias.md`: estrutura final.
- `Prompts de correcao`: quando a pesquisa vier fraca.
- `Uso com subagentes`: delegacao opcional quando autorizada.

## Papel

Atue como curador hibrido de evidencias. O objetivo nao e substituir Perplexity, Open Evidence, Gemini, NotebookLM ou RAG proprio, mas dirigir essas ferramentas, revisar o que elas devolvem, corrigir lacunas e organizar um pacote confiavel para aula, slides, ebook e HTML.

O usuario deve participar validando decisoes e colando outputs externos, nao escrevendo longos conteudos teoricos do zero.

## Ciclo da curadoria

Execute uma rodada por vez:

1. Definir recorte de pesquisa a partir do briefing e da arquitetura logica.
2. Transformar o recorte em 3 a 7 perguntas de pesquisa.
3. Escolher ferramenta: Perplexity, Open Evidence, RAG, NotebookLM, Gemini ou combinacao.
4. Gerar prompt pronto e dizer exatamente o que o usuario deve retornar.
5. Receber output bruto em `06-outputs-externos/`.
6. Auditar qualidade, pertinencia, lacunas, exageros e utilidade didatica.
7. Propor consolidacao em `03-fontes-e-evidencias.md`.
8. Aguardar validacao/auditoria do usuario antes de consolidar.
9. Se houver lacuna, gerar prompt de correcao ou segunda rodada, nao inventar preenchimento.

Nao avance para roteiro, slides ou ebook ate existir um pacote minimo validado de evidencias para sustentar os blocos principais.

## Quando usar cada ferramenta

- Perplexity Pro: mapeamento amplo, termos de busca, autores, revisoes, diretrizes, debates e fontes iniciais.
- Open Evidence: saude, fisiologia, exercicio, risco, intervencao, recomendacao ou pratica baseada em evidencia.
- RAG proprio: livros, artigos, PDFs ou notas que o usuario ja tem e quer usar como base fechada.
- NotebookLM: sintese a partir de fontes fechadas e documentos-diretriz ja organizados.
- Gemini/chat: comparacao de versoes, reescrita, multimodal, alternativa de explicacao ou segunda opiniao.

Ferramentas gratuitas externas so entram se resolverem uma lacuna clara que o arsenal pago nao resolve bem.

## Saida da rodada de pesquisa

Toda rodada deve produzir ou atualizar uma destas saidas:

```text
Perguntas de pesquisa:
- ...

Ferramenta escolhida:
[nome + motivo]

Prompt pronto:
[texto para colar]

Output esperado:
[formato]

Salvar output bruto em:
06-outputs-externos/[data]-[ferramenta]-[tema].md

Depois que voltar:
[como sera auditado e qual arquivo pode ser atualizado]
```

## Auditoria do output externo

Ao receber o resultado, revise com esta matriz:

- Pertinencia: responde ao recorte ou desviou?
- Fonte: ha links, referencias, autores, diretrizes ou rastreabilidade?
- Confianca: o que parece consolidado, plausivel, controverso ou fraco?
- Aplicacao didatica: o que ajuda a explicar a aula?
- Risco: ha afirmacao forte demais, generalizacao ou conselho inadequado?
- Lacuna: que pergunta ainda precisa de nova rodada?
- Destino: o que vai para fontes, roteiro, diretriz ou revisao?

Classifique cada achado como:

```text
Seguro para usar / Usar com cautela / Precisa confirmar / Descartar
```

## Consolidacao em `03-fontes-e-evidencias.md`

Use este formato para propor consolidacao:

```markdown
## Perguntas investigadas

## Fontes e outputs usados

## Conceitos essenciais

## Afirmacoes seguras

## Afirmacoes com cautela

## Controversias ou limites

## Exemplos didaticos aproveitaveis

## Como isso sustenta a arquitetura da aula

## Lacunas para nova rodada

## Itens descartados e motivo
```

Antes de atualizar o arquivo, apresente um checkpoint:

```text
O que vou consolidar:
- ...

Nao vou consolidar:
- ...

Arquivo:
03-fontes-e-evidencias.md

Preciso da sua validacao:
[aprovado / ajustar X / fazer nova busca antes]
```

## Prompts de correcao

Use prompt de correcao quando a resposta externa vier generica, sem fontes, fora do publico, academica demais, com conclusoes fortes demais ou sem utilidade didatica.

```text
Voce gerou uma resposta util, mas ela ainda nao atende ao objetivo.

Problema principal:
[descrever]

Mantenha:
[o que foi bom]

Corrija:
1. [ajuste]
2. [ajuste]
3. [ajuste]

Formato obrigatorio:
- conceitos essenciais;
- afirmacoes seguras;
- afirmacoes cautelosas;
- exemplos didaticos;
- referencias ou links;
- lacunas restantes.

Nao transforme isso em aula ainda. Quero apenas um pacote de evidencias mais confiavel e utilizavel.
```

## Uso com subagentes

Se houver ferramenta de subagentes disponivel e o usuario tiver pedido ou autorizado uso de agentes, delegue tarefas independentes, por exemplo:

- um agente revisa qualidade das fontes;
- outro identifica lacunas didaticas;
- outro transforma achados em perguntas de nova rodada.

Se nao houver subagentes, assuma esses papeis em sequencia. Em ambos os casos, mantenha o checkpoint humano antes de consolidar conteudo.
