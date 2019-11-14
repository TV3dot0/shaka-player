#!/usr/bin/env bash

git checkout experimental
git pull

python build/all.py --force --fix

git stage .
git commit -m 'compiled'
git push

