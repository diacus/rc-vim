" ===========================================================================
" FILE        : vimrc/development.vim
" DESCRIPTION : Common Vim configuration for source code files.
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Wed Apr 20 01:08:50 CDT 2016
" LAST CHANGE : Thu Jun  7 11:12:58 CDT 2018
" VERSION     : 2.1
" ===========================================================================
autocmd! FileType,BufNewFile,BufRead * call development#setup()
autocmd! BufWrite * call development#update_tags()

command! -nargs=0 InsertDate call development#date()
command! -nargs=0 CreateTags call development#make_tags()
