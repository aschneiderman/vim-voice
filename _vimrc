" Of course
set nocompatible


set lines=45 columns=160

" Make the pathogen plugin manager work
execute pathogen#infect()
syntax on
filetype plugin indent on


" Set the fonts & colors the way I like:  DejaVu font, sprinkles' light colorscheme
set guifont=DejaVu_Sans_Mono:h9:cANSI
colorscheme sprinkles 
set background=light


" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on
 
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
 
" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden



filetype off                  " required

