" Customized switch between source/header command
function! SwitchSourceHeader()
	" C
	if (expand ("%:e") == "c")
		find %:t:r.h
	elseif (expand("%:e") == "h")
		find %:t:r.c
	" C++
	elseif (expand ("%:e") == "cpp")
		find %:t:r.hpp
	elseif (expand("%:e") == "hpp")
		find %:t:r.cpp
	" Ada
	elseif (expand ("%:e") == "adb")
		find %:t:r.ads
	elseif (expand("%:e") == "ads")
		find %:t:r.adb
	" Unknown extension
	else
		echom "SwitchSourceHeader: unknown extension"
	endif
endfunction

