set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required

" My Plugins here:

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tlib'
Plugin 'tComment'
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable

" My config here:
set tabstop=2
set shiftwidth=2
set expandtab
set number

autocmd FileType php setlocal shiftwidth=4 tabstop=4

let mapleader = ","
let g:mapleader = ","

" My maps here:

" RSpec integration
au FileType ruby nmap <Leader>r :call RunCurrentSpecFile()<CR>
au FileType ruby nmap <Leader>t :call RunNearestSpec()<CR>
au FileType ruby nmap <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "!bundle exec rspec {spec}"

" FuzzyFinder
map <C-s-p> :FufCoverageFile<CR>

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" golang stuff
au FileType go nmap <Leader>r <Plug>(go-run)
au FileType go nmap <Leader>b <Plug>(go-build)
au FileType go nmap <Leader>t <Plug>(go-test)
au FileType go nmap <Leader>c <Plug>(go-coverage)

" colorschemes
set t_Co=256
set background=dark
colorscheme vividchalk

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

" remove extra whitespaces
autocmd BufWritePre * :%s/\s\+$//e
