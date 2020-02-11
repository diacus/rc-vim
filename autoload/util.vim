" ===========================================================================
" FILE        : autoload/util.vim
" DESCRIPTION : Helper utility functions
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : sáb feb 24 17:11:39 CST 2018
" CREATION    : jue feb 15 00:21:51 CST 2018
" VERSION     : 2.1
" ===========================================================================

function util#chomp(text)
  return substitute(a:text, '\n\+$', '', '')
endfunction

function! util#identify_platform()
  if has('unix')
    if has('mac') || has('macunix') || has('osx')
      let platform = 'MacOS'
    else
      let platform = 'Linux'
    endif
  elseif has('win32') || has('win64') || has('win95')
    let platform = 'Windows'
  endif

  return platform
endfunction
