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

"New cpp + hpp files
source ~/.vim/function/new_files/cpp.vimrc
call _cpp_and_hpp()

"New Makefile
source ~/.vim/function/new_files/make.vimrc
call _makefile()

"New bash script files
source ~/.vim/function/new_files/bash.vimrc
source ~/.vim/function/new_files/git.vimrc
if _bash_script() && _gitignore()
	autocmd BufNewfile *	Stdheader
endif
