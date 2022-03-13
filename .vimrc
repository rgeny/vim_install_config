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
if _cpp_hpp() && _cpp_structor() && _cpp_operator()
	call _cpp_other()
endif
