" This must be first, because it changes other options as a side effect.
set nocompatible

" the following lines are to setup vundle
filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'
 " vundle setup finished!
 
 " Add YouCompleteMe plugin
 Bundle 'Valloric/YouCompleteMe'

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" let yourself know what mode you are in
set showmode
set ruler
set number

" font and size and colorscheme
set guifont=Consolas:h16

" background and colorscheme
set background=dark
" colorscheme solarized
colorscheme molokai " anothe great one is molokai

" enabe hiddn buffers
set hidden

" Enable enhanced command-line completion. Presumes you have compiled
" with +wildmenu.  See :help 'wildmenu'
set wildmenu

" Let's make it easy to edit this file (mnemonic for the key sequence is
" 'e'dit 'v'imrc)
nmap <silent> ,ev :e $MYVIMRC<cr>

" And to source this file as well (mnemonic for the key sequence is
" 's'ource 'v'imrc)
nmap <silent> ,sv :so $MYVIMRC<cr>
