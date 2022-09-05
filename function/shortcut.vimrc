function Shortcut_normal()
	nnoremap <C-E> $
	nnoremap <C-A> ^
	nnoremap <A-q> :q<CR>
	nnoremap <A-w> :wq<CR>
	nnoremap <A-s> :w<CR>
	nnoremap <A-r> zR
	nnoremap <A-f> zM
endfunction

function Shortcut_insert()
	inoremap <C-E> <esc>$i<Right>
	inoremap <C-A> <esc>^i
	inoremap <A-q> <esc>:q<CR>
	inoremap <A-w> <esc>:wq<CR>
	inoremap <A-s> <esc>:w<CR>i
	inoremap <A-r> <esc>:zR<CR>i
	inoremap <A-f> <esc>:zM<CR>
endfunction

function Shortcut_virtual()
	vnoremap <C-E> $
	vnoremap <C-A> ^
	vnoremap <A-q> <esc>:q<CR>
	vnoremap <A-w> <esc>:wq<CR>
	vnoremap <A-s> <esc>:w<CR>v
	vnoremap <A-r> <esc>:zR<CR>
	vnoremap <A-f> <esc>:zM<CR>
endfunction

function Shortcut_commentary()
	if (expand('%:e')=="c" || expand('%:e')=="cpp" || expand('%:e')=="h" || expand('%:e')=="hpp" || expand('%')==".c" || expand('%')==".cpp")
		nnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>
		inoremap <C-O> <esc>:s/\/\/\\|^/\/\/<CR>:noh<CR>i
		vnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>v
		nnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>
		inoremap <C-P> <esc>:s/\/\/\\|^//<CR>:noh<CR>i
		vnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>v
	elseif expand('%:e')=="sh" || expand('%')==".sh" || expand('%')=="Makefile"
		nnoremap <C-O> :s/\#\\|^/\#/<CR>:noh<CR>
		inoremap <C-O> <esc>:s/\#\\|^/\#/<CR>:noh<CR>i
		vnoremap <C-O> :s/\#\\|^/\#/<CR>:noh<CR>v
		nnoremap <C-P> :s/\#\\|^//<CR>:noh<CR>
		inoremap <C-P> <esc>:s/\#\\|^//<CR>:noh<CR>i
		vnoremap <C-P> :s/\#\\|^//<CR>:noh<CR>v
	elseif expand('%:e')=="vimrc" || expand('%')==".vimrc"
		nnoremap <C-O> :s/\"\\|^/\"/<CR>:noh<CR>
		inoremap <C-O> <esc>:s/\"\\|^/\"/<CR>:noh<CR>i
		vnoremap <C-O> :s/\"\\|^/\"/<CR>:noh<CR>v
		nnoremap <C-P> :s/\"\\|^//<CR>:noh<CR>
		inoremap <C-P> <esc>:s/\"\\|^//<CR>:noh<CR>i
		vnoremap <C-P> :s/\"\\|^//<CR>:noh<CR>v
	endif
endfunction
