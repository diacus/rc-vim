" ===========================================================================
" FILE        : autoload/tex.vim
" DESCRIPTION : Helper functions for ftplugin/tex.vim
" COPIED BY   : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : sáb ago  5 20:51:47 CDT 2017
" CREATION    : sáb jul 29 23:16:09 CDT 2017
" VERSION     : 2.1
" ===========================================================================
function tex#preview()
  if !exists('b:pdf')
    let b:pdf = expand("%:r") . '.pdf'
  endif
  let l:cmd='!xdg-open ' . b:pdf
  write
  make
  execute l:cmd
endfunction
