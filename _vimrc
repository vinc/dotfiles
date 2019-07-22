" begin vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vundlevim/vundle.vim'
Plugin 'w0rp/ale'

call vundle#end()
filetype plugin indent on

syntax on

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.atom.builder set ft=ruby

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

set background=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number
set colorcolumn=80

" Disable beep
set visualbell t_vb=

set clipboard=unnamed

" The direction keys [h][j][k][l] keys on a qwerty keyboard map to 'dhtn' in
" dvorak, and the [p][c][v][j] keys map to 'hjkl' but the [p] is too far.
"
" When we swap [t]ill to til[l], we get righ[t] and the directions keys are
" now [j][c][v][k].
nnoremap t l
nnoremap l t
nnoremap T L
nnoremap L T
