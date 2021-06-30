" =============================================================================
" FILE        : vimrc/writing.vim
" DESCRIPTION : Common Vim configuration for document files
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Jun 29 19:01:23 CDT 2021
" CREATION    : Mon Apr 25 00:17:06 CDT 2016
" =============================================================================
map <silent> <F4> :call writing#toogle_foa()<CR>
au FileType,BufNewFile,BufRead * call writing#setup()
