" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    bash.vimrc                                         :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: rgeny <rgeny@student.42.fr>                +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2022/03/23 14:10:52 by rgeny             #+#    #+#              "
"    Updated: 2022/07/26 13:00:47 by rgeny            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

function _bash_script()
	if expand('%:t')=="test.sh"
		autocmd BufNewFile test.sh	0r ~/.vim/skeleton/test.sh
	else
		autocmd BufNewFile *.sh 0r	~/.vim/skeleton/skeleton.sh
	endif
	if expand('%:t:e:e')=="sh"
		return 0
	endif
	return 1
endfunction
