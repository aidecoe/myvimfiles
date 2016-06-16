if exists("b:did_local_ftplugin") | finish | endif
let b:did_local_ftplugin = 1

runtime! ftplugin/haskell.vim

setlocal expandtab
setlocal shiftwidth=4
setlocal textwidth=79

" Make Haskell completion work with YCM
setlocal omnifunc=necoghc#omnifunc
let g:ycm_semantic_triggers = { 'haskell' : ['.'] }

autocmd BufWritePost *.hs,*.lhs GhcModCheckAndLintAsync

nmap <buffer> <silent> <Leader>t :GhcModType<CR>
nmap <buffer> <silent> <Leader>T :GhcModTypeClear<CR>
