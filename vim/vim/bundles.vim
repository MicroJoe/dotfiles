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

" Snippets
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'

" Other code stuff
Bundle 'Raimondi/delimitMate'
Bundle 'DoxygenToolkit.vim'

filetype plugin indent on
