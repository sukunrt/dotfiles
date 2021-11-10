set nocompatible

syntax on
filetype plugin indent on

colorscheme solarized

set backspace=indent,eol,start

set expandtab

set paste

set ruler

set number
set relativenumber

" disable startup message
set shortmess+=I

set laststatus=2

set hidden

set ignorecase
set smartcase

set incsearch

set showmatch " show matching braces when text indicator is over them

nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.


set noerrorbells visualbell t_vb=

set mouse+=a

set scrolloff=5

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l



" Disable bad habits
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>
" ...and in insert mode
inoremap <Left>  <ESC>:echoe "Use h"<CR>
inoremap <Right> <ESC>:echoe "Use l"<CR>
inoremap <Up>    <ESC>:echoe "Use k"<CR>
inoremap <Down>  <ESC>:echoe "Use j"<CR>
