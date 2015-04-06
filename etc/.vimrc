syntax on " syntax on
set hls
set ts=4 " tabstop = 4
"set expandtab
"set shiftwidth=2 " for cindent
set autoindent

set nocp " important for backspace and set nu 
set backspace=indent,eol,start
"set indentexpr=
"set comments=

set nu " line numer
set noswapfile " no swap file
"colorscheme Monokai " theme change
"set t_Co=256 " 256 colors


"""""""""""""""""""""""""""""
" https://github.com/gmarik/Vundle.vim
" vim +PluginInstall +qall

filetype off " vundle required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""""""""
" custom plugin

Plugin 'chunpu/vim-monokai'
"Plugin 'tomasr/molokai'
Plugin 'digitaltoad/vim-jade'
Plugin 'groenewege/vim-less'

" end custom
""""""""""""""""""""""


" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
filetype plugin on    " required, fuxk the indent

set t_Co=256 " 256 colors, before monokai
colorscheme monokai
