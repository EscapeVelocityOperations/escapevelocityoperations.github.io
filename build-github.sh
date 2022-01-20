#!/bin/sh

git checkout --orphan gh-pages
echo "Build started"
FOLDER=build

git  --work-tree  $FOLDER add  --all
git  --work-tree  $FOLDER commit  -m  gh-pages
echo Pushing to gh-pages..
git  push  origin  HEAD:gh-pages  --force
rm  -r  $FOLDER
git  checkout  -f  master
git  branch  -D  gh-pages
echo Successfully deployed check your setting
