function _cpp_new_c_hpp()
	autocmd BufNewFile c_*.hpp	0r ~/.vim/skeleton/c_skeleton.hpp
	autocmd BufNewFile c_*.hpp	%s/C_SKELETON/\=toupper(expand('%:t:r'))/g
	autocmd BufNewFile c_*.hpp	%s/c_skeleton/\=expand('%:t:r')/g
	autocmd BufNewFile c_*.hpp	Stdheader
	autocmd BufNewFile c_*.hpp	wq
endfunction

function _cpp_new_c_structor_cpp()
	autocmd BufNewFile *.structor.cpp	0r ~/.vim/skeleton/skeleton.structor.cpp
	autocmd BufNewFile *.structor.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.structor.cpp	Stdheader
	autocmd BufNewFile *.structor.cpp	wq
	if expand('%:t:e:e')=="structor.cpp"
		return 0
	endif
	return 1
endfunction

function _cpp_new_c_operator_cpp()
	autocmd BufNewFile *.operator.cpp	0r ~/.vim/skeleton/skeleton.operator.cpp
	autocmd BufNewFile *.operator.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.operator.cpp	Stdheader
	autocmd BufNewFile *.operator.cpp	wq
	if expand('%:t:e:e')=="operator.cpp"
		return 0
	endif
	return 1
endfunction

function _cpp_new_c___cpp()
	autocmd BufNewFile *.*.cpp	0r ~/.vim/skeleton/skeleton..cpp
	autocmd BufNewFile *.*.cpp	%s/skeleton/\=expand('%:t:r:r')/g
	autocmd BufNewFile *.*.cpp	Stdheader
	autocmd BufNewFile *.*.cpp	wq
endfunction
