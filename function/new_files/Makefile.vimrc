function _make_c()
	autocmd BufNewFile makec :e Makefile
	autocmd BufNewFile makec 0r ~/.vim/skeleton/make_c
	autocmd BufNewFile makec :Stdheader
	autocmd BufNewFile makec :w
	autocmd BufNewFile makec 36
endfunction

function _make_cpp()
	autocmd BufNewFile makecpp :e Makefile
	autocmd BufNewFile makecpp 0r ~/.vim/skeleton/make_cpp
	autocmd BufNewFile makecpp :Stdheader
	autocmd BufNewFile makecpp :w
	autocmd BufNewFile makecpp 36
endfunction