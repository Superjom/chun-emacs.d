#!/bin/bash

set -e -x

rm -rf ./private
cp -rf ~/.emacs.d/private .
cp ~/.spacemacs .
git add private
git add .spacemacs

git commit -a 
git push
