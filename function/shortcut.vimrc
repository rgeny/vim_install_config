function Shortcut_normal()
	nnoremap <C-E> $
	nnoremap <C-A> ^
	nnoremap <A-q> :q<CR>
	nnoremap <A-w> :wq<CR>
	nnoremap <A-s> :w<CR>
	nnoremap <C-c> yy
	nnoremap <C-v> p
	nnoremap <C-x> dd
	nnoremap <C-y> <C-r>
endfunction

function Shortcut_insert()
	inoremap <C-h> <left>
	inoremap <C-j> <down>
	inoremap <C-k> <up>
	inoremap <C-l> <right>
	inoremap <C-E> <esc>$i<Right>
	inoremap <C-A> <esc>^i
	inoremap <A-q> <esc>:q<CR>
	inoremap <A-w> <esc>:wq<CR>
	inoremap <A-s> <esc>:w<CR>i
	inoremap <C-c> <esc>yyi
	inoremap <C-v> <esc>pi
	inoremap <C-x> <esc>ddi
endfunction

function Shortcut_virtual()
	vnoremap <C-E> $
	vnoremap <C-A> ^
	vnoremap <A-q> <esc>:q<CR>
	vnoremap <A-w> <esc>:wq<CR>
	vnoremap <A-s> <esc>:w<CR>v
	vnoremap <C-c> yy
	vnoremap <C-v> p
	vnoremap <C-x> dd
endfunction

function Shortcut_commentary()
	if (expand('%:e')=="c" || expand('%:e')=="cpp" || expand('%:e')=="h" || expand('%:e')=="hpp" || expand('%')==".c" || expand('%')==".cpp")
		nnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>
		inoremap <C-O> <esc>:s/\/\/\\|^/\/\/<CR>:noh<CR>i
		vnoremap <C-O> :s/\/\/\\|^/\/\/<CR>:noh<CR>v
		nnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>
		inoremap <C-P> <esc>:s/\/\/\\|^//<CR>:noh<CR>i
		vnoremap <C-P> :s/\/\/\\|^//<CR>:noh<CR>v
	elseif expand('%:e')=="sh" || expand('%')==".sh"
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
