" ---------- GENERAL PREFERENCES ---------- "
set rnu
set nu
set ve+=onemore
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[5 q"  " default cursor (usually blinking block) otherwise


" ---------- VUNDLE ---------- "
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on
" use mouse in normal and visual mode
set mouse=nv
Plugin 'tomtom/tcomment_vim'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'


" ---------- YANK SUPPORT ---------- "
set clipboard=unnamedplus

" ---------- CTAGS IN .GIT ------------ "
set tagrelative
set tags^=.git/tags;~

set softtabstop=0 noexpandtab
set shiftwidth=4
set tabstop=4

" ---------- PERSISITENT UNDO ------------ "
if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.vim/undo  "directory where the undo files will be stored
  endif  
