" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Pathogen and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'chriskempson/vim-tomorrow-theme'
Plug 'vim-syntastic/syntastic'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'Quramy/tsuquyomi'
Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'leafgarland/typescript-vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'wincent/command-t', {
\   'do': 'rvm use system && rake clean && rake make'
\ }
Plug 'mattn/emmet-vim'
Plug 'ctrlpvim/ctrlp.vim'


call plug#end()


syntax on
filetype plugin indent on

runtime! init/**.vim

if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif
