#!/usr/bin/env bash

if [ "$1" != "" ]; then
    echo "Checkout branch: " "$1"
    BRANCH="$1"
else
    echo "Checkout branch: v2.5.x"
    BRANCH="v2.5.x"

fi

git checkout ${BRANCH}

git pull

python build/all.py --force --fix

git stage .
git commit -m 'compiled'
git push

