# HTML Didatico

Use HTML quando o produto precisar de interacao, responsividade fina, controle visual, experiencia mobile rica ou algo que ferramentas como NotebookLM/Gemini nao entregam bem.

## Quando escolher HTML

Considere HTML para:

- ebook mobile navegavel;
- infografico interativo;
- quiz;
- simulador ou calculadora;
- cards navegaveis;
- linha do tempo;
- mapa conceitual;
- apresentacao vertical interativa;
- checklist interativo;
- demonstracao visual de processo;
- mini landing didatica para compartilhar.

Prefira NotebookLM ou ferramenta de slides quando o produto for linear, textual e sem interacao.

## Papel do Codex

Use Codex/VS Code como ferramenta principal para HTML:

1. Definir objetivo didatico do material.
2. Escolher formato interativo.
3. Criar arquitetura de informacao.
4. Implementar HTML/CSS/JS.
5. Validar mobile e desktop.
6. Ajustar clareza, visual e usabilidade.

Quando houver skills disponiveis, acione:

- `html-ui-ux-reviewer` para revisar usabilidade e ergonomia.
- `visual-design-polish` para acabamento visual.
- `html-pwa-appscript` se o material virar app leve, PWA ou precisar de Google Sheets/Apps Script.
- `data-storytelling-dashboard` se houver dados, KPIs ou graficos narrativos.

## Formatos recomendados

### Ebook mobile em HTML

Use quando o usuario quer leitura fluida no celular com navegacao, resumo e secoes colapsaveis.

Elementos:

- capa compacta;
- indice fixo ou navegavel;
- capitulos curtos;
- cards de conceito;
- boxes de alerta;
- progresso de leitura opcional;
- botao para voltar ao topo;
- layout responsivo.

### Infografico interativo

Use para explicar relacoes, sequencias ou comparacoes.

Elementos:

- passos clicaveis;
- tooltips;
- comparadores;
- destaque progressivo;
- legenda clara;
- texto curto.

### Quiz ou checklist

Use para consolidar aprendizagem.

Elementos:

- perguntas curtas;
- feedback imediato;
- explicacao do gabarito;
- progresso;
- resumo final.

### Simulador ou calculadora

Use quando o aluno precisa manipular variaveis para entender relacoes.

Elementos:

- entradas simples;
- resultado claro;
- explicacao do calculo;
- limites e avisos;
- exemplos pre-preenchidos.

## Briefing minimo para HTML

Antes de implementar, defina:

- objetivo didatico;
- publico;
- dispositivo principal;
- acao principal do usuario;
- conteudo de entrada;
- nivel de interatividade;
- criterios de sucesso;
- se precisa funcionar offline;
- se precisa exportar, imprimir ou compartilhar.

## Regras de qualidade

- Mobile-first.
- Texto legivel sem zoom.
- Touch targets confortaveis.
- Nenhum conteudo importante escondido sem indicacao.
- Estados claros para interacao.
- Cores e componentes com funcao didatica.
- Sem elementos decorativos que atrapalhem leitura.
- Testar em viewport mobile e desktop.

## Prompt para planejar HTML

```text
Vamos transformar este conteudo em um material HTML didatico.

Objetivo do aluno:
[OBJETIVO]

Conteudo base:
[RESUMO/ROTEIRO]

Escolha o melhor formato entre ebook mobile, infografico interativo, quiz, simulador, cards navegaveis ou linha do tempo.

Entregue:
1. formato recomendado e justificativa;
2. arquitetura de informacao;
3. componentes da interface;
4. comportamento interativo;
5. criterios de validacao;
6. plano de implementacao em HTML/CSS/JS.
```
