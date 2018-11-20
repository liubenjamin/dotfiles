let mapleader=" "

set number
set relativenumber
set ruler
syntax enable
set showcmd
set cursorline
set showmatch
set incsearch
set hlsearch
set mouse=a
:imap kj <Esc>

function! NumberToggle()
  if(&relativenumber == 1 && &number == 1)
    set number
    set norelativenumber
  elseif (&number == 1 && &relativenumber == 0)
    set norelativenumber
    set nonumber
  else
    set number
    set relativenumber
  endif
endfunc

" toggle line numbers
nnoremap <leader>l :call NumberToggle()<CR>
" join lines without moving cursor
nnoremap J mzJ`z
" center easily 
nnoremap <leader><Space> zz

nnoremap XX ZQ

set clipboard^=unnamedplus,unnamed

" make Y move like D and C
noremap Y y$

" make d and D go to black hole register (cut by using v/V + x) 
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/

" plugins

call plug#begin('~/.config/nvim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'

Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

call plug#end()

