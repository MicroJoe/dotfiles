set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Theme
Bundle 'w0ng/vim-hybrid'

" Git
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" MD
Bundle 'tpope/vim-markdown'

" OCaml
Bundle 'omlet.vim'

" Python
Bundle 'klen/python-mode'

" HTML
Bundle 'mattn/emmet-vim'

" Other code stuff
Bundle 'ervandew/supertab'
Bundle 'Syntastic'
Bundle 'Raimondi/delimitMate'

Bundle 'Rip-Rip/clang_complete'
Bundle 'DoxygenToolkit.vim'

filetype plugin indent on
