set background=light

" Clear default syntax highlighting
hi clear
if exists("syntax_on")
    syntax reset
endif

" Set colorscheme name
let g:colors_name = 'pygments'


hi Normal guifg=Black guibg=White

hi Comment guifg=#408080
hi Statement guifg=#008000 gui=bold
hi PreProc guifg=#BC7A00
hi Type guifg=#B00040
hi Special guifg=#B06020 gui=bold
hi Function guifg=#0000FF
hi Operator guifg=#606060

hi String guifg=#BA2121
hi Number guifg=#666666
hi Boolean guifg=#008000
