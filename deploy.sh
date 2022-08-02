#!/bin/bash
set -e
set -x

./build.sh

cd output
git init
echo html.jarhar.com > CNAME
git add -f .
git commit -m "github pages"
git checkout -b pages
git remote add origin git@github.com:josepharhar/html-build
git push -f origin pages
rm -rf .git
cd ..
