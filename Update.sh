#!/bin/bash

ignored_files=`git ls-files -i --exclude-from=.gitignore`
for ignored_file in $ignored_files; do
    git rm -r --cached $ignored_file
done
git add .
git commit -a && git push origin master
