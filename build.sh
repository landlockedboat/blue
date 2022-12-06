#!/bin/bash

outputDir="$HOME/Documents/blue/drive"
inputFiles="$HOME/Documents/blue/fuente/manuscrito/*"
for file in $inputFiles
do
    output=${file%%.*}.docx
    pandoc -s "$file" -o "$outputDir/$(basename -- "$output")"
done