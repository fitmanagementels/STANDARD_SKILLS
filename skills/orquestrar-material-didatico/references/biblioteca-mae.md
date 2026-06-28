# Biblioteca-Mae de Materiais Didaticos

Use esta referencia quando houver uma pasta-mae com varias aulas e pastas compartilhadas de templates, diretrizes, prompts, fontes, assets ou indice.

## Sumario

- `Principio`: aula atual e editavel; biblioteca-mae e referencia.
- `Estrutura recomendada`: pastas fixas da biblioteca.
- `Politica de edicao`: o que pode ou nao pode ser editado.
- `O que colocar em cada pasta`: conteudo esperado por pasta.
- `Uso em workspace multi-root`: quais pastas abrir junto da aula.
- `Checklist antes de editar pasta compartilhada`: autorizacao para mudanca global.

## Principio

A aula atual e o espaco de trabalho ativo. A biblioteca-mae e memoria reutilizavel. Pastas compartilhadas devem ser lidas como referencia por padrao e editadas somente quando o usuario decidir mudar um padrao global.

Nao trate uma referencia compartilhada como arquivo de trabalho da aula.

## Estrutura recomendada

```text
MATERIAIS_DIDATICOS/
├── _templates/
├── _diretrizes-padrao/
├── _prompts-padrao/
├── _fontes-recorrentes/
├── _assets/
├── _indice-geral/
├── _arquivo/
└── aula-[tema]/
```

## Politica de edicao

### Editar livremente no projeto da aula

Arquivos dentro de `aula-[tema]/` sao o local normal de trabalho:

- briefing;
- arquitetura logica;
- roteiro;
- fontes e evidencias da aula;
- diretrizes especificas da aula;
- prompts da aula;
- outputs externos;
- revisoes;
- produtos finais;
- versoes;
- HTML da aula.

### Ler como referencia por padrao

Pastas com prefixo `_` sao compartilhadas. Nao edite sem autorizacao explicita:

- `_templates/`;
- `_diretrizes-padrao/`;
- `_prompts-padrao/`;
- `_fontes-recorrentes/`;
- `_assets/`;
- `_indice-geral/`;
- `_arquivo/`.

Excecao: atualizar `_indice-geral/` pode ser proposto ao final de uma aula para registrar que o material existe, mas ainda deve ser apresentado como checkpoint.

## O que colocar em cada pasta

### `_templates/`

Modelos vazios ou semi-estruturados para iniciar novas aulas.

Conteudos recomendados:

- `template-aula-completa/`;
- `00-briefing.md`;
- `01-arquitetura-logica.md`;
- `02-roteiro-mestre.md`;
- `03-fontes-e-evidencias.md`;
- `checklist-revisao.md`;
- `estrutura-html-didatico/`.

Use copiando ou adaptando para dentro da aula atual. Nao edite o template original salvo se o usuario quiser melhorar o padrao.

### `_diretrizes-padrao/`

Padroes globais de estilo, linguagem e qualidade.

Conteudos recomendados:

- `linguagem-e-tom.md`;
- `estilo-slides.md`;
- `estilo-ebook-mobile.md`;
- `criterios-validacao.md`;
- `criterios-html-didatico.md`;
- `controle-regressao-conteudo.md`.

Use como fonte de criterio. Se uma aula precisar de excecao, registre a excecao na pasta da aula, nao altere o padrao global.

### `_prompts-padrao/`

Prompts reutilizaveis para ferramentas externas.

Conteudos recomendados:

- `perplexity-pesquisa-profunda.md`;
- `open-evidence.md`;
- `notebooklm-preparacao.md`;
- `notebooklm-slides.md`;
- `notebooklm-ebook-mobile.md`;
- `gemini-revisao.md`;
- `codex-html-didatico.md`;
- `correcao-sem-perda-de-detalhes.md`.

Use como base para gerar prompts especificos da aula em `aula-[tema]/05-prompts/`.

Para `open-evidence.md`, use como conteudo minimo: principios de prompt engineering para OpenEvidence, politica de Dotflows e os fluxos `.COLETAR_BASE`, `.COLETAR_EVIDENCIA`, `.COMPARAR_CONCEITOS`, `.MAPEAR_LACUNAS` e `.RESUMIR_PARA_FONTE`. Se o arquivo ainda nao existir na pasta-mae, a skill pode propor copiar/adaptar o template em `assets/biblioteca-mae/_prompts-padrao/open-evidence.md`.

### `_fontes-recorrentes/`

Fontes que aparecem em muitas aulas.

Conteudos recomendados:

- bibliografia por area;
- links de diretrizes;
- listas de artigos importantes;
- notas sobre livros usados com frequencia;
- mapas de temas e autores.

Nao misture aqui pesquisa especifica de uma aula. Pesquisa especifica fica em `aula-[tema]/03-fontes-e-evidencias.md` e `06-outputs-externos/`.

### `_assets/`

Recursos visuais ou tecnicos reaproveitaveis.

Conteudos recomendados:

- logos;
- paletas;
- fontes;
- icones;
- imagens autorizadas;
- componentes HTML reutilizaveis;
- exemplos visuais.

Ao usar asset em uma aula, prefira copiar para a aula ou registrar claramente a dependencia.

### `_indice-geral/`

Mapa da biblioteca.

Conteudos recomendados:

- `aulas.md`: lista de aulas, status e produtos finais;
- `temas.md`: temas ja trabalhados;
- `padroes-usados.md`: quais diretrizes foram usadas;
- `materiais-finais.md`: links para slides, ebooks e HTMLs finais.

Atualize apenas quando o usuario pedir organizar a biblioteca ou quando uma aula for finalizada e o usuario validar o registro.

### `_arquivo/`

Zona de arquivamento.

Conteudos recomendados:

- projetos pausados;
- experimentos;
- versoes descartadas;
- materiais antigos fora do padrao atual.

Nao consulte por padrao. Use apenas se o usuario pedir recuperar algo antigo.

## Uso em workspace multi-root

Recomendacao:

```text
Workspace ativo:
- aula-atual/
- _templates/
- _diretrizes-padrao/
- _prompts-padrao/
```

Abra `_fontes-recorrentes/`, `_assets/` ou aulas antigas somente quando forem necessarias para a etapa atual.

## Checklist antes de editar pasta compartilhada

Antes de editar qualquer pasta com prefixo `_`, confirme:

```text
Pasta compartilhada afetada:
[caminho]

Motivo para mudar padrao global:
[motivo]

Impacto esperado em aulas futuras:
[impacto]

Alternativa local:
[por que nao basta editar apenas a aula atual]

Preciso da sua autorizacao:
[aprovar mudanca global / manter como excecao local]
```

Se o usuario nao aprovar mudanca global, crie ou atualize apenas arquivo local dentro da aula atual.
