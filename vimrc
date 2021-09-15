" ---------- GENERAL PREFERENCES ---------- "
" show relative line number and current line number
set rnu
set nu
" onemore on each line
set ve+=onemore
" cursor per mode
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[5 q"  " default cursor (usually blinking block) otherwise
" if we're going to be using spaces...
set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4
" use mouse in normal and visual mode
set mouse=nv
" open vim in last place
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


" ---------- VUNDLE ---------- "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
" can't live without it
Plugin 'tomtom/tcomment_vim'
" bloated autocomplete
Plugin 'valloric/youcompleteme'
" fugitive - git tools in vim
Plugin 'tpope/vim-fugitive'


" ---------- YANK TO CLIPBOARD SUPPORT ---------- "
set clipboard=unnamedplus


" ---------- PERSISITENT UNDO ------------ "
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif  
