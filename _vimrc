" Don't use vi default settings (i.e., "compatible")
set nocompatible


set lines=45 columns=160

" Make the pathogen plugin manager work, including  turning off & on detecting file type (e.g., a Python file)
filetype off
filetype plugin indent off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

" Set the fonts & colors the way I like:  DejaVu font, sprinkles' light colorscheme
set guifont=DejaVu_Sans_Mono:h9:cANSI
colorscheme sprinkles 
set background=light


" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on
 
"Make it easier to work with "hidden" buffers (ii.e., buffers that have unsaved changes and are not currently loaded in a window)
set hidden

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on
 
" Show line numbers
set number

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" - vim-session commands --------
let g:session_autosave='yes'		" Automatically save the default session when quitting
let g:session_autoload='yes'		" Automatically load the default session



" ---- THINGS TO RESEARCH ---------------
" Turns on matchit, which allows you to use the % to jump between matching HTML tags (among other things)
" runtime macros/matchit.vim   " NOTE: doesn't seem to be working, not sure why
