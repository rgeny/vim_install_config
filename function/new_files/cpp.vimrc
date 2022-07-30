" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    cpp.vimrc                                          :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: rgeny <marvin@42.fr>                       +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2022/07/26 12:32:34 by rgeny             #+#    #+#              "
"    Updated: 2022/07/30 13:28:09 by rgeny            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

function _cpp_and_hpp()
	if expand ('%:t:e:e')=="hpp"
		autocmd BufNewFile *	0r ~/.vim/skeleton/skeleton.hpp
	elseif expand ('%:t:e:e')=="structor.cpp"
		autocmd BufNewfile *	0r ~/.vim/skeleton/skeleton.structor.cpp
	elseif expand ('%:t:e:e')=="operator.cpp"
		autocmd BufNewfile *	0r ~/.vim/skeleton/skeleton.operator.cpp
	elseif expand ('%:t:e:e')=="member.cpp"
		autocmd BufNewfile *	0r ~/.vim/skeleton/skeleton.member.cpp
	elseif expand ('%:t')=="main.c"
		autocmd BufNewfile *	0r ~/.vim/skeleton/main.c
	elseif expand ('%:t')=="main.cpp"
		autocmd BufNewfile *	0r ~/.vim/skeleton/main.cpp
	else
		autocmd BufNewfile *.*.cpp	0r ~/.vim/skeleton/skeleton..cpp
	endif
	autocmd BufNewfile *.hpp	%s/SKELETON/\=toupper(expand('%:t:r'))/g
	autocmd BufNewFile *.hpp	%s/skeleton/\=expand('%:t:r')/g
	autocmd BufNewFile *.*.cpp	%s/skeleton/\=expand('%:t:r:r')/g
endfunction
