" ===========================================================================
" FILE        : after/plugin/transparent.vim
" DESCRIPTION : Enable terminal transparency
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Thu Sep  9 19:45:45 CDT 2021
" CREATION    : mié 23 jun 2021 15:05:30 CDT
" ===========================================================================
"
if ! has('gui_running')
  highlight  Normal    guibg=NONE
  highlight! VertSplit guibg=#3B4252
endif
