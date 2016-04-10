call plug#begin()
Plug 'tpope/vim-sensible'
call plug#end()

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
