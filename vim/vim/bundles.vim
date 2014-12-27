" bundles.vim

" OCaml intendation helper
" Bundle 'def-lkb/ocp-indent-vim'
" set rtp+=~/.vim/bundle/ocp-indent-vim

" Python-mode config
"let g:pymode_rope = 0
let g:pymode_breakpoint = 0

" XPTemplate config
let g:xptemplate_vars = "SParg=&BRloop= &BRif= &BRfun= "
let g:xptemplate_brace_complete = ''
let g:xptemplate_fallback = '<Tab>'
let g:xptemplate_key = '<Tab>'

set runtimepath+=~/.vim/xpt-perso

" Syntastic config
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

" delimitMate config
" We expand on CR but not with OCaml files since we use ocp-indent for this
let g:delimitMate_expand_cr = 1
au BufNewFile,BufRead *.ml let g:delimiitMate_expand_cr = 0

" Doxygen config
let g:DoxygenToolkit_commentType = "C++"

" Merlin handling
" It is not a bundle but still a plugin and is used here because of the
" vimrc's aim to stay generic.

let s:ocamlmerlin=substitute(system('opam config var share'),'\n$','','''') .  "/merlin"
execute "set rtp+=".s:ocamlmerlin."/vim"
execute "set rtp+=".s:ocamlmerlin."/vimbufsync"

let g:syntastic_ocaml_checkers = ['merlin']

" OCP-Indent handling

let g:ocp_indent_vimfile = system("opam config var share")
let g:ocp_indent_vimfile = substitute(g:ocp_indent_vimfile, '[\r\n]*$', '', '')
let g:ocp_indent_vimfile = g:ocp_indent_vimfile . "/vim/syntax/ocp-indent.vim"

autocmd FileType ocaml exec ":source " . g:ocp_indent_vimfile

" Activate plugins
filetype plugin indent on
