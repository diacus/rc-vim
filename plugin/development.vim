" ===========================================================================
" FILE        : vimrc/development.vim
" DESCRIPTION : Common Vim configuration for source code files.
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Jun 29 18:28:04 CDT 2021
" CREATION    : Wed Apr 20 01:08:50 CDT 2016
" ===========================================================================
autocmd! FileType,BufNewFile,BufRead * call development#setup()
autocmd! BufWrite * call development#update_tags()

command! -nargs=0 InsertDate call development#date()
command! -nargs=0 CreateTags call development#make_tags()

nnoremap <leader>x :call development#toogle_cursor_cross()<CR>
nnoremap <leader>n :call development#toogle_number()<CR>
