" Homemade hexmode
command -bar Hexmode call ToggleHex()

function ToggleHex()
	" Save current statusline
	let l:oldstatus=&statusline

	if !exists("b:editHex") || !b:editHex
		let b:editHex = 1
		" Read binary values and convert it to hex in buffer
		%!xxd

		" Set custom statusline to show [hexmode]
		:set statusline=%f
		:set statusline+=\ [hexmode]
	else
		let b:editHex = 0
		" Read back hex values and convert it to raw in buffer
		%!xxd -r

		" Restore saved statusline
		:set statusline="l:oldstatus"
	endif
endfunction

" If the Hexmode is active (b:editHex is true) then, prior to saving the file
" we convert it back to raw binary
au BufWritePre * if exists("b:editHex") && b:editHex | %!xxd -r
au BufWritePre * endif

" And once saved we convert it back for hex editing since the mode is still
" active
au BufWritePost * if exists("b:editHex") && b:editHex | %!xxd
au BufWritePost * endif

" Binding to ctrl+H for Hexmode toggle
nnoremap <C-H> :Hexmode<CR>
inoremap <C-H> <Esc>:Hexmode<CR>
vnoremap <C-H> :<C-U>Hexmode<CR>
