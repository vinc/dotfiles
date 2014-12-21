runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
syntax on
filetype plugin indent on

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
