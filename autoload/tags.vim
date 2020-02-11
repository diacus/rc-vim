" ===========================================================================
" FILE        : autoload/tags.vim
" DESCRIPTION : Utility functions for tags.vim plugin
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Thu Apr 19 10:07:08 CDT 2018
" VERSION     : 2.1
" ===========================================================================
function! tags#vertical_open()
  if !exists("w:tagbrowse")
    vsplit
    let w:tagbrowse=1
    wincmd r
  endif
  execute "tag " . expand("<cword>")
endfunction
