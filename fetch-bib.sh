#!/bin/sh

curl -o tmp-reference.bib http://www.parsai.net/files/research/Mutation%20Testing%20as%20a%20Safety%20Net%20for%20Test%20Code%20Refactoring.bib
echo "---\n---\nReferences\n=============\n\n" > reference.bib
cat tmp-reference.bib >> reference.bib
sed -i '/^%/d' reference.bib
rm tmp-reference.bib
