set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set cindent

" Turn off tabs for makefiles
autocmd FileType make setlocal noexpandtab
"autocmd FileType make setlocal shiftwidth=8


"Insert newline without entering insert mode
"Shift + Enter
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Use system clipboard
set clipboard=unnamedplus

set exrc

" :map <F7> :w !xclip<CR><CR>
" :vmap <F7> "*y
" :map <S-F7> :r!xclip -o<CR>

:nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
inoremap jj <ESC>
