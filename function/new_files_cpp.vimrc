function _cpp_new_c_hpp()
	autocmd BufNewFile c_*.hpp	0r ~/.vim/skeleton/c_skeleton.hpp
	autocmd BufNewFile c_*.hpp	%s/C_SKELETON/\=toupper(expand('%:r'))/g
	autocmd BufNewFile c_*.hpp	%s/c_skeleton/\=expand('%:r')/g
	autocmd BufNewFile c_*.hpp	Stdheader
endfunction

function _cpp_new_c_structor_cpp()
	autocmd BufNewFile *.structor.cpp	0r ~/.vim/skeleton/skeleton.structor.cpp
	autocmd BufNewFile *.structor.cpp	%s/skeleton/\=expand('%:r:r')/g
	autocmd BufNewFile *.structor.cpp	Stdheader
endfunction

function _cpp_new_c___cpp()
	autocmd BufNewFile *.*.cpp	0r ~/.vim/skeleton/skeleton..cpp
	autocmd BufNewFile *.*.cpp	%s/skeleton/\=expand('%:r:r')/g
	autocmd BufNewFile *.*.cpp	Stdheader
endfunction
