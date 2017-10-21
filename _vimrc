" begin vundle config
set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'vundlevim/vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on
" end vundle config

syntax on

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" https://github.com/rust-lang/rust.vim/issues/118
let g:syntastic_rust_checkers = ['cargo']

set background=dark
colorscheme solarized

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number
set colorcolumn=80

" Disable beep
set visualbell t_vb=

set clipboard=unnamed
