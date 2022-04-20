" begin vundle config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

"Plugin 'morhetz/gruvbox'
Plugin 'gruvbox-community/gruvbox'
Plugin 'junegunn/fzf'
"Plugin 'ntpeters/vim-better-whitespace'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vundlevim/vundle.vim'
Plugin 'fidian/hexmode'
Plugin 'dense-analysis/ale'

call vundle#end()
filetype plugin indent on

syntax on

au BufNewFile,BufRead *.json.jbuilder set ft=ruby
au BufNewFile,BufRead *.atom.builder set ft=ruby

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

let g:ale_linters = {'rust': ['analyzer']}

set backspace=indent,eol,start

set termguicolors
set background=dark
let g:gruvbox_guisp_fallback = 'bg'
colorscheme gruvbox

hi Normal guibg=NONE ctermbg=NONE

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set number
set colorcolumn=80,100,120

" Add format option 'w' to add trailing white space, indicating that paragraph
" continues on next line. This is to be used with mutt's 'text_flowed' option.
augroup mail_trailing_whitespace " {
  autocmd!
  autocmd FileType mail setlocal formatoptions+=w
augroup END " }

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

" Disable 'ex mode' key [Q] that is right next to 'ex cmd' key [:] on a dvorak
" keyboard, causing entering it by mistake and having to type 'visual' to
" leave it.
nnoremap Q <Nop>
