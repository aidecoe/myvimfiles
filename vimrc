call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all', 'on': 'FZF' }
Plug 'junegunn/fzf.vim', { 'on': 'FZF' }
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
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

"
" Options
"

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

"
" Abbreviations
"

cabbr bb buffers
