function _cpp_hpp()
	autocmd BufNewFile *.hpp	0r ~/.vim/skeleton/skeleton.hpp
	autocmd BufNewFile *.hpp	%s/SKELETON/\=toupper(expand('%:t:r'))/g
	autocmd	BufNewFile *.hpp	%s/skeleton/\=expand('%:t:r')/g
	autocmd BufNewFile *.hpp	Stdheader
	autocmd	BufNewFile *.hpp	26
	if expand('%:t:e:e') == ".hpp"
		return 0
	endif
	return 1
endfunction

function _cpp_structor()
	autocmd BufNewFile *.structor.cpp	0r ~/.vim/skeleton/skeleton.structor.cpp
	autocmd BufNewFile *.structor.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.structor.cpp	Stdheader
	if expand('%:t:e:e')=="structor.cpp"
		return 0
	endif
	return 1
endfunction

function _cpp_operator()
	autocmd BufNewFile *.operator.cpp	0r ~/.vim/skeleton/skeleton.operator.cpp
	autocmd BufNewFile *.operator.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.operator.cpp	Stdheader
	if expand('%:t:e:e')=="operator.cpp"
		return 0
	endif
	return 1
endfunction

function _cpp_other()
	autocmd BufNewFile *.*.cpp	0r ~/.vim/skeleton/skeleton..cpp
	autocmd BufNewFile *.*.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.*.cpp	Stdheader
endfunction

function _cpp_main()
	autocmd BufNewFile main.c* 0r ~/.vim/skeleton/main.cpp
	autocmd BufNewFile main.c* Stdheader
	autocmd BufNewFile main.c* 18
endfunction
