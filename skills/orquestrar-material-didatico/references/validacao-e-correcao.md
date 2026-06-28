# Validacao e Correcao

Use esta referencia quando o usuario trouxer um output externo ou disser que o produto nao saiu como queria.

## Processo de revisao

Compare o output contra:

1. Briefing.
2. Objetivo final.
3. Publico.
4. Arquitetura logica.
5. Roteiro mestre.
6. Fontes/evidencias.
7. Documentos-diretriz.
8. Produto esperado.

Nao revise apenas "qualidade geral"; revise desalinhamento contra a intencao.

Toda revisao deve terminar com uma decisao objetiva:

- `Aprovado`
- `Aprovado com ajustes pequenos`
- `Regerar uma parte`
- `Regerar tudo`
- `Mudar diretriz antes de tentar de novo`

Depois da decisao, indique a proxima acao e o arquivo persistente que deve ser atualizado.

Nao consolide conteudo didatico novo em briefing final, arquitetura, roteiro, fontes, diretrizes ou produtos sem checkpoint de validacao/auditoria do usuario. A validacao pode ser curta, mas precisa existir quando a atualizacao muda a substancia do projeto.

Quando a nova resposta for uma correcao de uma versao anterior, revise tambem regressao de conteudo: a nova versao nao pode ficar mais pobre, rasa ou menos util apenas porque corrigiu o problema apontado.

## Checklist geral

- O objetivo da aula esta claro?
- A progressao conceitual faz sentido?
- O material prepara o aluno para o objetivo final?
- Os conceitos iniciais sustentam os topicos finais?
- As evidencias sustentam as afirmacoes?
- O nivel esta adequado ao publico?
- O tom esta correto?
- O produto segue a diretriz visual/editorial?
- O formato combina com a ferramenta usada?
- Ha excesso de texto, superficialidade ou perda de nuance?
- O produto pode ser usado imediatamente ou precisa de nova rodada?

## Matriz de diagnostico

### Ficou generico

Provaveis causas:

- briefing fraco;
- falta de exemplos concretos;
- diretriz de profundidade ausente;
- ferramenta recebeu pedido amplo demais.

Correcao:

- adicionar contexto do publico;
- incluir exemplos obrigatorios;
- listar o que nao pode ser tratado genericamente;
- pedir versao por blocos.

### Ficou academico demais

Provaveis causas:

- fontes dominam a linguagem;
- falta diretriz editorial;
- publico nao foi descrito;
- pedido nao exigiu aplicacao pratica.

Correcao:

- criar diretriz de linguagem;
- pedir exemplos e analogias;
- separar "base tecnica" de "explicacao para aluno";
- reduzir jargoes ou explica-los.

### Faltou progressao logica

Provaveis causas:

- roteiro mestre ausente;
- topicos foram gerados como lista, nao como sequencia;
- faltam transicoes;
- conclusao apareceu antes da base teorica.

Correcao:

- reconstruir arquitetura: conceito -> contexto -> problema -> relacao -> metodo;
- pedir que cada bloco explique como prepara o proximo;
- adicionar transicoes obrigatorias.

### Slides ficaram poluidos

Provaveis causas:

- prompt pediu conteudo demais por slide;
- nao havia diretriz visual;
- ferramenta confundiu slide com apostila;
- faltou limite de texto.

Correcao:

- um slide por mensagem;
- texto minimo no slide;
- notas do apresentador separadas;
- sugestao visual obrigatoria;
- mover detalhes para ebook.

### Ebook nao ficou mobile-first

Provaveis causas:

- ferramenta gerou apostila tradicional;
- paragrafos longos;
- falta de boxes, checklists e subtitulos;
- nao havia regra por tela/ideia.

Correcao:

- capitulos curtos;
- paragrafos breves;
- boxes de resumo;
- uma ideia por tela;
- checklists e exemplos.

### Evidencia insuficiente

Provaveis causas:

- fonte ruim;
- busca exploratoria tratada como conclusiva;
- ferramenta inventou ou generalizou;
- pergunta cientifica imprecisa.

Correcao:

- reformular pergunta;
- buscar em Open Evidence quando for saude;
- separar afirmacoes seguras de cautelosas;
- pedir referencias e limites.

### Ferramenta ignorou diretriz

Provaveis causas:

- diretrizes longas demais;
- conflito entre fontes;
- prompt nao definiu hierarquia;
- pedido grande demais.

Correcao:

- explicitar hierarquia: briefing > roteiro mestre > diretriz > fontes;
- dividir a geracao em partes;
- pedir checklist de conformidade no fim;
- reduzir instrucoes concorrentes.

### Prompt precisa ser dividido em partes

Sinais:

- output raso;
- estrutura incompleta;
- perda de topicos;
- excesso de invencao;
- qualidade cai no meio do material.

Correcao:

- gerar por bloco;
- gerar 3 apresentacoes verticais e consolidar em ebook;
- revisar cada parte antes de juntar;
- criar diretriz de consolidacao final.

### Correcao empobreceu a versao anterior

Provaveis causas:

- prompt pediu correcao sem exigir preservacao de detalhes;
- ferramenta resumiu para resolver o problema mais facil;
- v2 foi gerada do zero, sem usar v1 como base;
- nao houve comparacao entre versoes antes da consolidacao.

Correcao:

- preservar v1 como fonte principal;
- comparar v1 e v2 antes de substituir;
- reincorporar exemplos, transicoes, criterios e ressalvas uteis;
- pedir nova versao com regra "corrigir sem reduzir densidade";
- consolidar uma versao hibrida quando v2 corrigiu algo mas perdeu material bom.

## Formato de resposta para correcao

```text
Diagnostico:
[o que saiu errado e por que]

Prioridade de correcao:
1. ...
2. ...
3. ...

O que manter:
- ...

O que mudar:
- ...

Prompt de correcao:
[prompt pronto para colar na ferramenta]

O que trazer de volta:
[qual output o usuario deve retornar ao Codex para nova revisao]

Decisao:
[Aprovado / Aprovado com ajustes pequenos / Regerar uma parte / Regerar tudo / Mudar diretriz antes de tentar de novo]

Arquivo a atualizar:
[caminho no projeto persistente]
```

## Checkpoint antes de consolidar

Antes de atualizar arquivos com conteudo de outra IA, responda em formato curto:

```text
O que vou consolidar:
[resumo em 3-6 bullets]

Arquivo(s):
[caminhos]

Risco de desalinhamento:
[baixo/medio/alto + motivo]

Preciso da sua validacao:
[aprovado / ajustar X / nao consolidar ainda]
```

Se o usuario aprovar, atualize os arquivos. Se corrigir, incorpore a correcao antes de atualizar. Se nao responder com validacao clara, mantenha como rascunho ou output externo, nao como versao consolidada.

## Controle de regressao de conteudo

Antes de substituir uma versao detalhada por uma versao corrigida, entregue:

```text
Comparacao:
- v1 preservava:
- v2 melhorou:
- v2 perdeu ou simplificou:
- itens da v1 que devem voltar:

Decisao recomendada:
[usar v2 / montar versao hibrida / pedir nova correcao / manter v1]

Arquivo a atualizar:
[caminho]

Validacao necessaria:
[aprovado / reincorporar itens / nao substituir]
```

Se houver perda relevante de detalhe, nao consolidar v2 pura. Monte versao hibrida ou gere prompt de correcao segura.
