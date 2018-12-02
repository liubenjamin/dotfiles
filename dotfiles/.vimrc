let mapleader=" "

set number
set relativenumber
set ruler
set showcmd
set cursorline
set showmatch
set incsearch
set hlsearch
set splitbelow
set splitright
set inccommand=nosplit
syntax enable
highlight Comment cterm=italic gui=italic

" map kj to Escape
imap kj <Esc>

" join lines without moving cursor
nnoremap J mzJ`z

" center easily
nnoremap <leader><Space> zz

" use system clipboard
set clipboard^=unnamedplus,unnamed

" quick exit
nnoremap XX ZQ

" make Y move like D and C
noremap Y y$

" replace all is aliased to S
nnoremap S :%s///g<Left><Left><Left>

" quickly paste in insert mode
inoremap <C-r><C-r> <C-r>*

" move to beginning/end of line
noremap B ^
noremap E $

" automatically deletes all tralling whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" turn on undo files, put them in a common location
set undofile
set undodir=~/.vim/_undo/

" source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 7, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 7, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 7, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 7, 4)<CR>

call plug#begin('~/.config/nvim/plugged') " vim-plug
Plug 'itchyny/lightline.vim'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'lambdalisue/suda.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'terryma/vim-smooth-scroll'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'yggdroot/indentline'
call plug#end()
