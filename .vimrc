set tabstop=2
set shiftwidth=2
set expandtab

set number

set nocompatible               " be iMproved
filetype off                   " required!

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

" NerdTree
Bundle 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
