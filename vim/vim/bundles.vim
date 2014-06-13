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

colorscheme hybrid

" Markdown support
Bundle 'tpope/vim-markdown'

" OCaml intendation helper
Bundle 'def-lkb/ocp-indent-vim'
set rtp+=~/.vim/bundle/ocp-indent-vim

" Python mode for Vim
Bundle 'klen/python-mode'

let g:pymode_rope = 0

" ZenCoding for Vim, rapid HTML expanding tool
Bundle 'mattn/emmet-vim'

" XPTemplate
Bundle 'drmingdrmer/xptemplate'

let g:xptemplate_vars = "SParg=&BRfun= "
let g:xptemplate_brace_complete = ''
let g:xptemplate_fallback = '<Tab>'
let g:xptemplate_key = '<Tab>'

set runtimepath+=~/.vim/xpt-perso

" Syntastic, because viewing errors while editing a file is great.
Bundle 'Syntastic'

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" Double parenthesis, brackets, …
Bundle 'Raimondi/delimitMate'

" We expand on CR but not with OCaml files since we use ocp-indent for this
let g:delimitMate_expand_cr = 1
au BufNewFile,BufRead *.ml let g:delimiitMate_expand_cr = 0

" Hell yeah best C++ documentation tool ever
Bundle 'DoxygenToolkit.vim'

let g:DoxygenToolkit_commentType = "C++"

" Merlin handling
" It is not a bundle but still a plugin and is used here because of the
" vimrc's aim to stay generic.

let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/ocamlmerlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"

let g:syntastic_ocaml_checkers = ['merlin']

" Activate plugins
filetype plugin indent on
