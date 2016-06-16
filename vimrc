call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    \ | Plug 'eagletmt/ghcmod-vim', { 'tag': 'v1.3.1', 'for': 'haskell' }
Plug 'eagletmt/neco-ghc'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'thinca/vim-localrc'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/indentpython.vim--nianyang'
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

" ctrlp
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlPLastMode'
nmap <silent> <Leader>pb :CtrlPBuffer<CR>
nmap <silent> <Leader>pf :CtrlP<CR>
nmap <silent> <Leader>pm :CtrlPMRU<CR>

" gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" rainbow parentheses
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
nmap <silent> <Leader>R :RainbowParenthesesToggle<CR>

" SimpylFold
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

" ycm
" Don't disable syntastic for C++
let g:ycm_show_diagnostics_ui = 0

" syntastic
let g:syntastic_cpp_check_header = 1

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
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*.o,*.so,*.a

"
" Keybindings
"

nmap <silent> < :bprev<CR>
nmap <silent> > :bnext<CR>
nmap <silent> <Leader>s :set spell!<CR>
nmap <silent> <Leader>h :set hlsearch!<CR>
nmap <silent> <Leader>r :set relativenumber!<CR>
