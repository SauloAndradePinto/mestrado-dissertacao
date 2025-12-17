# Dissertação - Modelagem Matemática e Computacional de Escoamentos Bifásicos Densos

Dissertação de Mestrado em Engenharia Mecânica da Universidade Federal de Uberlândia.

**Autor:** Saulo Andrade Pinto  
**Orientador:** Prof. Dr. João Marcelo Vedovotto  
**Ano:** 2025

## Estrutura do Projeto

- `principal.tex` - Arquivo principal do documento LaTeX
- `estilo.sty` - Arquivo de estilo e configurações
- `bibliografia.bib` - Base de dados bibliográfica
- `compilador.sh` - Script para compilação automática

## Compilação

Para compilar o documento, execute:

```bash
./compilador.sh principal
```

Ou manualmente:

```bash
pdflatex principal.tex
bibtex principal.aux
makeindex principal.nlo -s nomencl.ist -o principal.nls
pdflatex principal.tex
pdflatex principal.tex
```

## Requisitos

- LaTeX (TeX Live ou MiKTeX)
- Pacotes LaTeX necessários (geralmente incluídos nas distribuições completas)

