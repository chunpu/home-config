#!/bin/bash

install_config() {
	local name=home-config

	cd /tmp &&

	rm -fr $name &&

	rm -fr ~/.vim/bundle/Vundle.vim &&

	# install vundle
	git clone --depth=1 https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&

	git clone --depth=1 https://github.com/chunpu/home-config.git &&

	cd $name &&

	cp etc/.??* ~ &&

	# https://github.com/trapd00r/LS_COLORSvim +PluginInstall +qall > /tmp/$name/stdout &&
	vim +PluginInstall +qall > /dev/tty &&

	echo 'install success!'
}

install_coreutils() {
	# http://linfan.info/blog/2012/02/27/colorful-terminal-in-mac/
	brew install xz coreutils
	if brew list | grep coreutils > /dev/null ; then
		PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"
	fi
}

install() {
	install_config
	# install_coreutils only mac
}

install
