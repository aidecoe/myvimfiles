call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()

" Properly display man pages
runtime ftplugin/man.vim
nnoremap K :<C-U>exe "Man" v:count "<C-R><C-W>"<CR>

" See the difference between the current buffer and the file it was loaded
" from, thus the changes you made.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
        \ | diffthis | wincmd p | diffthis
endif

"
" Options
"

set showcmd
set smartcase
set spelllang=pl,en
set ttyfast

"
" Keybindings
"

" Previous buffer
nmap <silent> < :bprev<CR>
" Next buffer
nmap <silent> > :bnext<CR>
" Toggle spell
nmap <silent> <Leader>s :set spell!<CR>

"
" Abbreviations
"

cabbr bb buffers
