function Shortcut_normal()
	noremap <left> <Nop>
	noremap <down> <Nop>
	noremap <up> <Nop>
	noremap <right> <Nop>
	noremap <C-O> :s/^/\/\/<CR>:noh<CR>
	noremap <C-P> :s/\/\///<CR>:noh<CR>
	noremap <C-E> $
	noremap <C-A> ^
	noremap <A-q> :q<CR>
	noremap <A-w> :wq<CR>
	noremap <A-s> :w<CR>
	noremap <C-c> yy
	noremap <C-v> p
	noremap <C-x> dd
	noremap <C-y> <C-r>
endfunction

function Shortcut_insert()
	inoremap <C-h> <left>
	inoremap <C-j> <down>
	inoremap <C-k> <up>
	inoremap <C-l> <right>
	inoremap <left> <Nop>
	inoremap <down> <Nop>
	inoremap <up> <Nop>
	inoremap <right> <Nop>
	inoremap <C-O> <esc>:s/^/\/\/<CR>:noh<CR>i
	inoremap <C-P> <esc>:s/\/\///<CR>:noh<CR>i
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
	vnoremap <left> <Nop>
	vnoremap <down> <Nop>
	vnoremap <up> <Nop>
	vnoremap <right> <Nop>
	vnoremap <C-O> :s/^/\/\/<CR>:noh<CR>
	vnoremap <C-P> :s/\/\///<CR>:noh<CR>
	vnoremap <C-E> $
	vnoremap <C-A> ^
	vnoremap <A-q> <esc>:q<CR>
	vnoremap <A-w> <esc>:wq<CR>
	vnoremap <A-s> <esc>:w<CR>v
	vnoremap <C-c> yy
	vnoremap <C-v> p
	vnoremap <C-x> dd
endfunction
