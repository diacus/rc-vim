" ===========================================================================
" FILE        : autoload/python.vim
" DESCRIPTION : Helper functions for ftplugin/python.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" CREATION    : mié feb 14 23:55:04 CST 2018
" VERSION     : 2.1
" ===========================================================================

function! python#breakpoint_add()
  normal Oimport bpdb; bpdb.set_trace()  # BREAKPOINT
  normal oprint('>>> bpdb.set_trace()')  # BREAKPOINT
  normal j
endfunction

function! python#breakpoint_del()
  g/BREAKPOINT/d
endfunction
