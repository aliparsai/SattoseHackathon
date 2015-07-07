#!/bin/sh

curl -o tmp-reference.bib http://dblp.uni-trier.de/pers/tb2/d/Demeyer:Serge.bib
echo "---\n---\nReferences\n=============\n\n" > reference.bib
cat tmp-reference.bib >> reference.bib
rm tmp-reference.bib
