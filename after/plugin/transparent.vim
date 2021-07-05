" ===========================================================================
" FILE        : after/plugin/transparent.vim
" DESCRIPTION : Enable terminal transparency
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Mon Jul  5 14:04:58 CDT 2021
" CREATION    : mié 23 jun 2021 15:05:30 CDT
" ===========================================================================
"
if ! has('gui_running')
  highlight Normal guibg=NONE
endif
