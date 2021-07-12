"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" File explorer
Plugin 'preservim/nerdtree'
" open/close nerdtree window
map - :NERDTreeToggle<CR>

" Ruby/Rails specific plugins
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable fzf for fuzzy file searching
set rtp+=/usr/local/opt/fzf
nnoremap <silent> <C-p> :FZF<CR>

" Sets how many lines of history VIM has to remember
set history=500

" Open vertical split files to the right
set splitright

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Show current line number
set number
" Show relative line numbers
set relativenumber

" Syntax highlighting
syntax on
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ruby Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
