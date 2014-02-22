" bundles.vim
"
" This file is used for all plugins stuff. If installing vundle is not
" possible, then just do not include this file in the main .vimrc and vundle
" will not be called. This will lead to a simpler vim configuration without
" any plugins installed.


" Come on Vi just suck.
set nocompatible

" Seems that I had to do this but I don't know why.
filetype off

" Set the path to vundle and load it.
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Well first of all we want to keep our plugin manager up to date.
Bundle 'gmarik/vundle'

" Theme
Bundle 'w0ng/vim-hybrid'

let g:hybrid_use_Xresources = 1
colorscheme hybrid

Bundle 'Lokaltog/vim-powerline'

" Markdown support
Bundle 'tpope/vim-markdown'

" OCaml intendation helper
Bundle 'omlet.vim'

" Python mode for Vim
Bundle 'klen/python-mode'

let g:pymode_rope = 0

" ZenCoding for Vim, rapid HTML expanding tool
Bundle 'mattn/emmet-vim'

" Tab should perform as an IDE tab key;
Bundle 'ervandew/supertab'

let g:SuperTabCrMapping = 0

" Syntastic, because viewing errors while editing a file is great.
Bundle 'Syntastic'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Double parenthesis, brackets, …
Bundle 'Raimondi/delimitMate'

let g:delimitMate_expand_cr = 1

" Hell yeah best C++ documentation tool ever
Bundle 'DoxygenToolkit.vim'

let g:DoxygenToolkit_commentType = "C++"

" Activate plugins
filetype plugin indent on
