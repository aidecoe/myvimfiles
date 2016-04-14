" Vim filetype plugin file
" Language:	Haskell
" Author:	aidecoe
" Licence:	You may redistribute this under the same terms as Vim itself


if exists("b:did_local_ftplugin") | finish | endif
let b:did_local_ftplugin = 1

runtime! ftplugin/haskell.vim

setlocal shiftwidth=4
setlocal expandtab
setlocal textwidth=79

autocmd BufWritePost *.hs,*.lhs GhcModCheckAndLintAsync

nmap <buffer> <silent> <Leader>t :GhcModType<CR>
nmap <buffer> <silent> <Leader>T :GhcModTypeClear<CR>
