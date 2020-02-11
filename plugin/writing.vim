" =============================================================================
" FILE        : vimrc/writing.vim
" DESCRIPTION : Common Vim configuration for document files
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : dom jul 30 00:07:36 CDT 2017
" CREATION    : Mon Apr 25 00:17:06 CDT 2016
" VERSION     : 2.1
" =============================================================================
" diacus vimrc starts
map <silent> <F4> :call writing#toogle_foa()<CR>
au FileType,BufNewFile,BufRead * call writing#setup()
" diacus vimrc ends
