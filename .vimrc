" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airline/vim-airline'
" solarize colorescheme
Plugin 'altercation/vim-colors-solarized.git'
" vim lucius colorscheme
Plugin 'jonathanfilip/vim-lucius'

" All plugins must be added before the following line
call vundle#end()          " required

filetype plugin indent on  " required 
syntax on
let g:airline_powerline_fonts = 1 " to populate g:airline_symbols
" set background=dark
" colorscheme solarized
colorscheme lucius
LuciusWhite
set guifont=Inconsolata\ for\ Powerline:h14
set laststatus=2
set noshowmode " Hide the default mode text
set number
let mapleader="\<Space>"
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" enabe hiddn buffers
set hidden

" Enable enhanced command-line completion.
set wildmenu
set wildmode=list:longest

" to recursively search all directories beneath current working directory when
" you tab-complete fuzzy file finder!
" set path+=**

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> <leader>sv :so $MYVIMRC<cr>

inoremap jk <esc>

" c template file 
au BufNewFile *.c 0r  ~/c/c_header.template 
" run python script from vim
nmap <silent> ,z :!python %<CR>

set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Search stuff

" fix vimregex to make it compatible with perl syntax
nnoremap / /\v
vnoremap / /\v
set hlsearch 
set ignorecase
set smartcase
set incsearch
nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>
