#!/bin/sh

while inotifywait -e modify *.tex; do
    latexmk \
        -f \
        -pdf \
        -interaction=nonstopmode \
        -outdir=target/ \
        main.tex
done
