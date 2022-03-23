" **************************************************************************** "
"                                                                              "
"                                                         :::      ::::::::    "
"    new_script.vimrc                                   :+:      :+:    :+:    "
"                                                     +:+ +:+         +:+      "
"    By: rgeny <rgeny@student.42.fr>                +#+  +:+       +#+         "
"                                                 +#+#+#+#+#+   +#+            "
"    Created: 2022/03/23 14:10:52 by rgeny             #+#    #+#              "
"    Updated: 2022/03/23 14:12:15 by rgeny            ###   ########.fr        "
"                                                                              "
" **************************************************************************** "

function _script_test()
	autocmd BufNewFile test.sh	0r ~/.vim/skeleton/test.sh
endfunction
