" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    make.vimrc                                         :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: rgeny <marvin@42.fr>                       +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2022/07/26 12:32:38 by rgeny             #+#    #+#              "
"    Updated: 2022/07/26 12:32:39 by rgeny            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

function _makefile()
	autocmd BufNewFile makec	0r ~/.vim/skeleton/make_c
	autocmd BufNewFile makecpp	0r ~/.vim/skeleton/make_cpp
	autocmd BufNewFile make*	Stdheader
	autocmd BufNewFile make*	:wq!
endfunction
