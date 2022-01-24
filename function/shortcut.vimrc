function Shortcut_normal()
	noremap <C-E> $
	noremap <C-A> ^
	noremap <A-q> :q<CR>
	noremap <A-w> :wq<CR>
	noremap <A-s> :w<CR>
	noremap <C-c> y
	noremap <C-v> p
	noremap <C-x> d
endfunction

function Shortcut_insert()
	inoremap <C-E> <esc>$i<Right>
	inoremap <C-A> <esc>^i
	inoremap <S-Tab> <C-d>áá
	inoremap <A-q> <esc>:q<CR>
	inoremap <A-w> <esc>:wq<CR>
	inoremap <A-s> <esc>:w<CR>i
	inoremap <C-c> <esc>yi
	inoremap <C-v> <esc>pi
	inoremap <C-x> <esc>di
endfunction

function Shortcut_virtual()
	vnoremap <C-E> $
	vnoremap <C-A> ^
	vnoremap <A-q> <esc>:q<CR>
	vnoremap <A-w> <esc>:wq<CR>
	vnoremap <A-s> <esc>:w<CR>v
	vnoremap <C-c> y
	vnoremap <C-v> p
	vnoremap <C-x> d
endfunction
