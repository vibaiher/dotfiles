set tabstop=2
set shiftwidth=2
set expandtab

autocmd FileType php setlocal shiftwidth=4 tabstop=4

set number

set nocompatible               " be iMproved
filetype off                   " required!

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
filetype plugin indent off
set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
au BufNewFile,BufRead *.test,*.install set filetype=php

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'

" My Bundles here:

" Git integration
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'

" Comments
Plugin 'tlib'
Plugin 'tComment'

" FuzzyFinder
Plugin 'L9'
Plugin 'FuzzyFinder'
map <C-s-p> :FufCoverageFile<CR>

" NerdTree
Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>

map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

imap <Left> <NOP>
imap <Right> <NOP>
imap <Up> <NOP>
imap <Down> <NOP>

map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

autocmd BufWritePre * :%s/\s\+$//e
