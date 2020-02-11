" ==============================================================================
" FILE        : plugin/spelling.vim
" DESCRIPTION : Useful key mappings for spell feature.
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : dom mar  4 12:45:29 CST 2018
" CREATION    : Tue Apr 26 23:20:32 CDT 2016
" VERSION     : 2.1
" ==============================================================================
nnoremap <silent> <F2> :call spelling#tooglespell()<CR>
" Display the list of possible words to correct the current misspelled text
nnoremap <silent> <leader><space> a<C-X><C-S>
