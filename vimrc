call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    \ | Plug 'eagletmt/ghcmod-vim', { 'tag': 'v1.3.1', 'for': 'haskell' }
Plug 'eagletmt/neco-ghc'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'vim-airline/vim-airline'
call plug#end()

"
" Plugins configuration
"

" Properly display man pages
runtime ftplugin/man.vim
nnoremap K :<C-U>exe "Man" v:count "<C-R><C-W>"<CR>

" See the difference between the current buffer and the file it was loaded
" from, thus the changes you made.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_
        \ | diffthis | wincmd p | diffthis
endif

" gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" airline
let g:airline_powerline_fonts = 1

"
" Options
"

set colorcolumn=+1  " Highlight column after 'textwidth'
set nojoinspaces
set number
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
" Toggle hlsearch
nmap <silent> <Leader>h :set hlsearch!<CR>
" Toggle showing relative line numbers
nmap <silent> <Leader>r :set relativenumber!<CR>

"
" Abbreviations
"

cabbr bb buffers
