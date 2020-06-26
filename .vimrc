source $VIMRUNTIME/defaults.vim

" install vim plug if it's not installed:
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif
" Put you plugins here.
call plug#begin()
"Plug 'tpope/vim-sensible'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'davidhalter/jedi-vim' "python autocompletion
"Plug 'tpope/vim-fugitive' "git integration
"Plug 'scrooloose/syntastic' "code syntaxis
Plug 'romainl/vim-devdocs'
" Plug 'vim-airline/vim-airline'
" solarize colorescheme
" Plug 'altercation/vim-colors-solarized.git'
" vim lucius colorscheme
" Plug 'jonathanfilip/vim-lucius'
call plug#end()

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

"let g:airline_powerline_fonts = 1 " to populate g:airline_symbols
" set background=dark
" colorscheme solarized
"colorscheme lucius
"LuciusWhite
set guifont=Inconsolata\ for\ Powerline:h14
set laststatus=2
" set noshowmode " Hide the default mode text
" set number
let mapleader="\<Space>"
let maplocalleader = "\\"

" enabe hiddn buffers
set hidden

" Enable enhanced command-line completion.
set wildmenu
set wildmode=list:longest

" to recursively search all directories beneath current working directory when
" you tab-complete fuzzy file finder!
 set path+=**

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> <leader>sv :so $MYVIMRC<cr>

inoremap jk <esc>

" c template file 
" au BufNewFile *.c 0r  ~/c/c_header.template 
" run python script from vim
nmap <silent> ,z :!python %<CR>

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

" Search stuff

" fix vimregex to make it compatible with perl syntax
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
nnoremap <C-l> :<C-u>nohlsearch<CR><C-l>
