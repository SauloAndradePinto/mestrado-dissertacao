#!/bin/sh

clear
pdflatex -interaction=nonstopmode $1.tex
#biber $1.bcf
bibtex $1.aux
makeindex $1.nlo -s nomencl.ist -o $1.nls
pdflatex -interaction=nonstopmode $1.tex
pdflatex -interaction=nonstopmode $1.tex
# Abre o PDF se o visualizador estiver disponível e o PDF foi gerado
if [ -f "$1.pdf" ]; then
    if command -v atril >/dev/null 2>&1; then
        atril $1.pdf &
    elif command -v evince >/dev/null 2>&1; then
        evince $1.pdf &
    elif command -v xdg-open >/dev/null 2>&1; then
        xdg-open $1.pdf &
    fi
fi
rm -f *.aux *.dvi *.bbl *.blg *.nlo *.nls *.lot *.lof *.toc *.out *.bak *.xml *.ilg *.log


