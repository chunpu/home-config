#!/bin/bash

cd /tmp &&

rm -fr home-config &&

git clone git@github.com:chunpu/home-config.git &&

cd home-config &&

cp etc/.??* ~ &&

vim +PluginInstall +qall

echo 'install success!'
