" ===========================================================================
" FILE        : ftplugin/python.vim
" DESCRIPTION : Plugin for Python file type
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : sáb may  5 22:35:54 CDT 2018
" CREATION    : mié feb 14 23:55:19 CST 2018
" VERSION     : 2.1
" ===========================================================================

setlocal makeprg=flake8  " Source code linting

let b:code_indent = 4

" Insert mode mappings
inoremap '<CR> '''<CR>'''<Esc>kA
inoremap "<CR> """<CR>"""<Esc>kA

" Set brakpoints. Requires bpython
command! -nargs=0 BreakPoint call python#breakpoint_add()
command! -nargs=0 UnbreakPoint call python#breakpoint_del()
