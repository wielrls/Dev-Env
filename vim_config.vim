" ===============================
" Setup:
" Include following line in ~/.vimrc:
"   source $PATH_TO_HERE/vim_config.vim
" Then run:
"   git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"   vim +PluginInstall +qall

" ================================
" Vundle config
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'ervandew/supertab'

" Color Schemes
Plugin 'Lokaltog/vim-distinguished'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" ================================

set t_Co=256
syntax on
set background=dark
colorscheme distinguished

set hlsearch
set incsearch

set expandtab
set shiftwidth=2
set softtabstop=2

set textwidth=80
set colorcolumn=+1

set nobackup

set ignorecase
set smartcase

" Strip trailing whitespace from all files on save
autocmd BufWritePre * :%s/\s\+$//e
