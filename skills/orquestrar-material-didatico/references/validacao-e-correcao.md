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
