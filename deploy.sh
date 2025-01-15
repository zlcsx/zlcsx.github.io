#!/bin/sh

rm -rf _site && rm -rf .jekyll-cache

git add --all && git commit -m 'update' && git push origin master

bundle install && jekyll build

rm -rf ../zlcsx.github.io/*

cp -R _site/* ../zlcsx.github.io/

cd ../zlcsx.github.io

git add --all && git commit -m 'update' && git push origin master
