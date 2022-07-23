" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    bash.vimrc                                         :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: rgeny <rgeny@student.42.fr>                +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2022/03/23 14:10:52 by rgeny             #+#    #+#              "
"    Updated: 2022/07/23 10:53:59 by rgeny            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

function _script_test()
	autocmd BufNewFile test.sh	0r ~/.vim/skeleton/test.sh
	if expand('%:t')=="test.sh"
		return 0
	endif
	return 1
endfunction

function _script()
	autocmd BufNewFile *.sh 0r ~/.vim/skeleton/skeleton.sh
	autocmd BufNewFile *.sh 64
endfunction
