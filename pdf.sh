#!/bin/bash
for file in /input/*.tex
do
	echo === RUN: pdflatex "$file" ===
	pdflatex "$file"
done
