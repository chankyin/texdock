#!/bin/bash
cp /input/*.tex .
files=*.tex
if [ ! -z "$1" ]
then
	files="$1"
fi
for file in $files
do
	echo === RUN: pdflatex "$file" ===
	pdflatex "$file"
	echo === RE-RUN: pdflatex "$file" === # because https://tex.stackexchange.com/a/301109
	pdflatex "$file"
done
