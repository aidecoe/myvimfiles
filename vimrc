call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
    \ | Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc'
Plug 'fs111/pydoc.vim'
Plug 'hdima/python-syntax'
Plug 'jmcantrell/vim-virtualenv'
Plug 'kien/rainbow_parentheses.vim'
Plug 'mbbill/undotree'
Plug 'mileszs/ack.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'thinca/vim-localrc'
Plug 'tpope/vim-characterize'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py', 'commit': '93956d747abd9f1ac438c219eb27e4ecd94cdb82' }
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/indentpython.vim--nianyang'
Plug 'vim-scripts/Mark--Karkat'
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
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_cmd = 'CtrlPLastMode'
nmap <silent> <Leader>pb :CtrlPBuffer<CR>
nmap <silent> <Leader>pf :CtrlP<CR>
nmap <silent> <Leader>pm :CtrlPMRU<CR>

" gruvbox
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" netrw
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_hide = 1
let g:netrw_liststyle = 3
autocmd FileType netrw setl bufhidden=wipe

" Python syntax
let python_highlight_all = 1

" rainbow parentheses
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
nmap <silent> <Leader>b :RainbowParenthesesToggle<CR>

" undotree
nmap <silent> <Leader>u :UndotreeToggle<CR>

" ycm
" Don't disable syntastic for C++
let g:ycm_show_diagnostics_ui = 0

" syntastic
let g:syntastic_cpp_check_header = 1

"
" Options
"

set colorcolumn=+1  " Highlight column after 'textwidth'
set ignorecase
set nojoinspaces
set number
set relativenumber
set showcmd
set smartcase
set spelllang=pl,en
set ttyfast
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*.o,*.so,*.a,*.hi

"
" Keybindings
"

nmap <silent> < :bprev<CR>
nmap <silent> > :bnext<CR>
nmap <silent> <Leader>s :set spell!<CR>
nmap <silent> <Leader>h :set hlsearch!<CR>
nmap <silent> <Leader>i :set ignorecase!<CR>
nmap <silent> <Leader>R :set relativenumber!<CR>
