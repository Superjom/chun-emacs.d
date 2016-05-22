#!/bin/bash

set -e -x

rm -rf ./private
cp -rf ~/.emacs.d/private .
git add private

git commit -a -m "update on $(date)"
git push
