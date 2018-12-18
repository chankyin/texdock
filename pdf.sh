#!/bin/bash
cp -r /input/* .
for file in *.tex
do
	echo === RUN: pdflatex "$file" ===
	pdflatex "$file"
	echo === RE-RUN: pdflatex "$file" === # because https://tex.stackexchange.com/a/301109
	pdflatex "$file"
done
