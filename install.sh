#!/bin/bash

config_install() {
	local name=home-config

	cd /tmp &&

	rm -fr $name &&

	# install vundle
	git clone --depth=1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&

	git clone --depth=1 https://github.com/chunpu/home-config.git &&

	cd $name &&

	cp etc/.??* ~ &&

	#vim +PluginInstall +qall > /tmp/$name/stdout &&
	vim +PluginInstall +qall > /dev/tty &&

	echo 'install success!'
}

config_install
