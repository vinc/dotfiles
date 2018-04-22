" begin vundle config
set nocompatible
filetype off 

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'vundlevim/vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'rust-lang/rust.vim'

call vundle#end()
filetype plugin indent on
" end vundle config

syntax on

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.atom.builder set ft=ruby

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

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
