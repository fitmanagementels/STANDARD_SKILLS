# OpenEvidence Dotflows

Use esta referencia quando o usuario quiser criar, revisar ou aplicar Dotflows do OpenEvidence para coletar conteudo teorico e evidencias que depois alimentarao Codex, NotebookLM, slides, ebook ou HTML didatico.

## Papel na skill

Dotflows devem ser tratados como prompts reutilizaveis para padronizar respostas do OpenEvidence. No fluxo de material didatico, eles nao substituem a arquitetura didatica feita no Codex; eles ajudam a coletar, filtrar, comparar, mapear lacunas e consolidar fonte teorica.

## Regras principais

- Use Dotflow com uma responsabilidade por vez.
- Separe coleta, evidencia, comparacao, lacunas e consolidacao.
- Defina formato antes de pedir conteudo.
- Inclua hierarquia de evidencia quando houver tema cientifico.
- Exija incertezas, limitacoes e referencias.
- Proiba invencao, recomendacao individualizada e uso de dados identificaveis.
- Traga output bruto para `06-outputs-externos/` antes de consolidar em `03-fontes-e-evidencias.md`.
- Audite antes de transformar em roteiro, slides ou ebook.

## Sequencia recomendada

1. `.COLETAR_BASE`: abrir tema e montar mapa teorico.
2. `.COLETAR_EVIDENCIA`: filtrar o que sustenta o tema na literatura.
3. `.COMPARAR_CONCEITOS`: comparar conceitos, metodos ou interpretacoes.
4. `.MAPEAR_LACUNAS`: separar o que e robusto, limitado ou incerto.
5. `.RESUMIR_PARA_FONTE`: consolidar fonte limpa para Codex/NotebookLM.

Nao usar `.SLIDES_SOURCE` por padrao. O usuario prefere construir roteiro e arquitetura de slides no Codex.

## Biblioteca-mae

O conteudo operacional dos Dotflows deve ficar na pasta-mae em:

```text
_prompts-padrao/open-evidence.md
```

Se a pasta-mae estiver aberta e o usuario autorizar mudanca de padrao global, crie ou atualize esse arquivo. Se nao, use o template incluido nesta skill:

```text
assets/biblioteca-mae/_prompts-padrao/open-evidence.md
```

## Checkpoint antes de atualizar padrao

Antes de editar `_prompts-padrao/open-evidence.md`, confirme:

```text
Pasta compartilhada afetada:
_prompts-padrao/open-evidence.md

Motivo para mudar padrao global:
[resumo]

O que sera adicionado:
[principios / dotflows / exemplos]

Alternativa local:
[por que nao basta salvar no projeto da aula]

Preciso da sua autorizacao:
[aprovar mudanca global / manter como excecao local]
```
