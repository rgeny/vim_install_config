set autoindent
set mouse=a
set linebreak
set hls
set nu
set shiftwidth=4
set tabstop=4
set nocompatible
set	showmatch
set	incsearch
set hidden

let c='a'
while c < 'z'
	exec "set <A-".c.">=\e".c
	exec "imap \e".c." <A-".c.">"
	let c = nr2char(1+char2nr(c))
endw
set timeout ttimeoutlen=50

source ~/.vim/function/make.vimrc

source ~/.vim/function/shortcut.vimrc
call	Shortcut_normal()
call	Shortcut_insert()
call	Shortcut_virtual()

source ~/.vim/function/new_files_cpp.vimrc
call _cpp_new_c_hpp()
call _cpp_new_a_hpp()
call _cpp_new_i_hpp()
if _cpp_new_c_operator_cpp()
	if _cpp_new_c_structor_cpp()
		call _cpp_new_c___cpp()
	endif
endif
