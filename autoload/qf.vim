"===========================================================================
" FILE        : ftplugin/qf.vim
" DESCRIPTION : Users's Vim configuration - Quick fix scripts
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Sun Dec 13 13:01:53 CST 2020
" ===========================================================================

function! qf#jump_from_python_test()
  let current_line = getline('.')
  let line_number = substitute(current_line, '^.*line \(\d\+\).*$', '\1', '')
  vertical wincmd f
  execute ':' . line_number
  normal zz
endfunction
