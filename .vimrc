
" powerline activation
 source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
" source c:\users\naif\appdata\roaming\python\python27\site-packages\powerline\bindings\vim\plugin\powerline.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" solarize colorescheme
Plugin 'altercation/vim-colors-solarized.git'
" vim lucius colorscheme
Plugin 'jonathanfilip/vim-lucius'

" All plugins must be added before the following line
call vundle#end()          " required

filetype plugin indent on  " required 
syntax on
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
set hlsearch 
" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" to recursively search all directories beneath current working directory when
" you tab-complete fuzzy file finder!
" set path+=**

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nnoremap <silent> <leader>ev :vsplit $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> <leader>sv :so $MYVIMRC<cr>

" c template file 
au BufNewFile *.c 0r  ~/c/c_header.template 
" run python script from vim
nmap <silent> ,z :!python %<CR>

" vimscripting
echo "Naif"
messages

