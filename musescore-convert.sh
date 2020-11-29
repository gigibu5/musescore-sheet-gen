#!/bin/sh

VAR=""

for((i = 0; i < $1; i++))
do
    #echo "$i"
    echo "Converting score_$i.svg into PDF"
    inkscape score_$i.svg --export-filename=tmp$i.pdf
    VAR+=" tmp$i.pdf"
done

echo "Generating end file"
pdfunite $VAR sheet.pdf
rm tmp*.pdf