# Controle de Regressao de Conteudo

Use esta referencia quando houver uma versao anterior detalhada e uma nova versao corrigida, reescrita ou gerada por outra IA.

## Principio

Nunca substituir uma versao rica por uma versao corrigida sem comparar. Uma versao pode corrigir o problema pedido e ainda assim perder detalhes, exemplos, transicoes, nuance, densidade teorica ou utilidade didatica.

Trate correcao como edicao controlada, nao como geracao do zero.

## Quando acionar

Acione antes de consolidar:

- roteiro mestre v2 a partir de v1;
- diretriz didatica, visual, de slides ou ebook revisada;
- pacote de evidencias consolidado depois de output externo;
- apresentacao, apostila, ebook ou HTML gerado novamente;
- qualquer arquivo que ja tinha status `Validado`, `A validar` ou era mais detalhado que o novo output.

## Rotina obrigatoria

1. Preservar a versao anterior.
2. Salvar a versao nova como rascunho ou output externo.
3. Comparar v1 vs v2 antes de substituir.
4. Identificar ganhos, perdas e mudancas neutras.
5. Reincorporar detalhes bons da v1 quando a v2 corrigiu algo mas empobreceu o material.
6. Produzir uma versao consolidada v2.x apenas depois da revisao.
7. Pedir validacao do usuario antes de trocar o arquivo principal.

## Matriz de comparacao

Avalie:

- Estrutura: blocos, ordem, hierarquia e transicoes foram preservados?
- Densidade: houve perda de explicacoes, exemplos, criterios ou ressalvas?
- Precisao: a correcao melhorou a confiabilidade sem criar novas afirmacoes fracas?
- Didatica: a progressao ficou mais clara ou mais rasa?
- Aplicabilidade: exemplos praticos e decisoes de uso foram mantidos?
- Coerencia: v2 continua alinhada ao briefing, fontes e diretrizes?
- Remocoes: o que saiu, por que saiu e se deve voltar?

## Formato de relatorio

```text
Arquivo comparado:
[caminho]

Versoes:
- anterior: [v1.0 / arquivo]
- nova: [v2.0 / output]

Melhorias reais:
- ...

Perdas ou simplificacoes:
- ...

Detalhes da v1 que devem voltar:
- ...

Partes da v2 que devem substituir a v1:
- ...

Decisao:
[consolidar / consolidar com reincorporacoes / pedir nova correcao / rejeitar v2]

Proxima acao:
[acao concreta]
```

## Prompt de correcao segura

```text
Corrija os problemas apontados sem resumir, simplificar ou remover detalhes uteis da versao anterior.

Use a versao anterior como base principal. A nova versao deve preservar ou aumentar a densidade util, mantendo exemplos, transicoes, ressalvas, criterios e explicacoes que ainda estejam corretos.

Se remover qualquer secao, exemplo, transicao, nuance ou explicacao, liste explicitamente:
1. o que foi removido;
2. por que foi removido;
3. se existe substituto equivalente na nova versao.

Entregue tambem um quadro final:
- o que mudou;
- o que foi preservado;
- o que foi removido;
- o que precisa de validacao humana.
```

## Regra de consolidacao

Se a nova versao estiver mais curta, mais generica ou menos explicativa que a anterior, nao consolidar automaticamente. Gerar um prompt de correcao ou montar uma versao hibrida que preserve os ganhos da v2 sem perder os detalhes bons da v1.
