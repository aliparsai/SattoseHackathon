#!/bin/bash
rm -rf out || exit 0;
mkdir out; 
bundle exec jekyll build
( cd out
 git init
 git config user.name "AutoDeployer"
 git config user.email "autodeployer@yopmail.com"
 cp -r ../_site/* .
 git add .
 git commit -m "Deployed to Github Pages"
 git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
)
