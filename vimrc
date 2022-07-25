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

source ~/.vim/function/shortcut.vimrc
call	Shortcut_normal()
call	Shortcut_insert()
call	Shortcut_virtual()
call	Shortcut_commentary()


"New cpp files
source ~/.vim/function/new_files/cpp.vimrc
if _cpp_structor() && _cpp_operator() && _cpp_member()
	call _cpp_other()
endif
call _cpp_main()
call _cpp_hpp()

"New Makefile
source ~/.vim/function/new_files/Makefile.vimrc
call _make_cpp()
call _make_c()

"New bash script files
source ~/.vim/function/new_files/bash.vimrc
if _script_test()
	call _script()
endif
