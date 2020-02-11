" ==============================================================================
" FILE        : autoload/spelling.vim
" DESCRIPTION : Helper functions for plugin/spelling.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : dom mar  4 12:41:57 CST 2018
" CREATION    : sáb jul 29 23:20:28 CDT 2017
" VERSION     : 2.1
" ==============================================================================
function! spelling#tooglespell()
  if &readonly
    set nospell
    set cursorline
  else
    if &spell
      call spelling#unset()
    else
      call spelling#set()
    endif
  endif
endfunction

function! spelling#set()
  set spell
  set nocursorline
  inoremap <silent> <Tab> <C-X><C-s>
  nnoremap <silent> <Tab> a<C-X><C-s>
  syntax off
endfunction

function! spelling#unset()
  set nospell
  set cursorline
  iunmap <Tab>
  nunmap <Tab>
  syntax on
endfunction
