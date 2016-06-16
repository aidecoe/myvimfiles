if exists("b:did_local_ftplugin") | finish | endif
let b:did_local_ftplugin = 1

runtime! ftplugin/python.vim

setlocal expandtab
setlocal shiftwidth=4
setlocal textwidth=79
