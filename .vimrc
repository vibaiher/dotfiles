set tabstop=2
set shiftwidth=2
set expandtab

set number

set nocompatible               " be iMproved
filetype off                   " required!

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
au BufNewFile,BufRead *.test set filetype=php

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" Git integration
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" Comments
Bundle 'tlib'
Bundle 'tComment'

" FuzzyFinder
Bundle 'L9'
Bundle 'FuzzyFinder'
map <C-s-p> :FufCoverageFile<CR>

" NerdTree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
