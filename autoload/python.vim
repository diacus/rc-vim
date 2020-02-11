" ===========================================================================
" FILE        : autoload/python.vim
" DESCRIPTION : Helper functions for ftplugin/python.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Feb 11 17:06:33 CST 2020
" CREATION    : mié feb 14 23:55:04 CST 2018
" VERSION     : 2.1
" ===========================================================================

function! python#breakpoint_add()
  if exists('g:use_bpython') && g:use_bpython == 1
    normal Oimport bpdb; bpdb.set_trace()  # BREAKPOINT
    normal oprint('>>> bpdb.set_trace()')  # BREAKPOINT
  elseif exists('g:use_ipython') && g:use_ipython == 1
    normal Oimport ipdb; ipdb.set_trace()  # BREAKPOINT
    normal oprint('>>> ipdb.set_trace()')  # BREAKPOINT
  else
    normal Oimport pdb; pdb.set_trace()   # BREAKPOINT
    normal oprint('>>> pdb.set_trace()')  # BREAKPOINT
  endif
  normal j
endfunction

function! python#breakpoint_del()
  g/BREAKPOINT/d
endfunction
