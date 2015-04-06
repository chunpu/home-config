#!/bin/bash

cd /tmp &&

rm -fr home-config &&

git clone git@github.com:chunpu/home-config.git &&

cd home-config &&

cp etc/.??* ~ &&

echo 'install success!'
echo 'run: vim +PluginInstall +qall to update vim plugin'
