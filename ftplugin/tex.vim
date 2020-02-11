" ===========================================================================
" FILE        : ftplugin/tex.vim
" DESCRIPTION : Specific Vim configuration for LaTeX files
" COPIED BY   : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : sáb ago  5 22:22:42 CDT 2017
" CREATION    : Fri Apr 22 00:16:30 CDT 2016
" VERSION     : 2.1
" ===========================================================================
setlocal tabstop=1
setlocal shiftwidth=1
setlocal smartindent
setlocal iskeyword+=:
setlocal makeprg=latexmk\ -pdf\ %:r

let g:tex_flavor='latex'
let g:tex_fold_enabled=1
let b:pdf = expand("%:r") . '.pdf'

command! -nargs=0 LaTeXPreview call tex#preview()
