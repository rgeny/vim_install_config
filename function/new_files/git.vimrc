function	_gitignore()
	autocmd BufNewfile .gitignore	0r ~/.vim/skeleton/.gitignore
	if (expand('%')==".gitignore")
		return 0
	endif
	return 1
endfunction
