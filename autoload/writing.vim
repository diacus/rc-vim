" =============================================================================
" FILE        : autoload/writing.vim
" DESCRIPTION : Helper functions for plugin/writing.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Jun 29 19:01:09 CDT 2021
" CREATION    : sáb jul 29 23:20:49 CDT 2017
" =============================================================================
function! writing#setup()
  if exists('b:istext')
    return
  endif
  if &filetype !~ 'text\|tex\|latex\|html\|xml\|markdown'
    unlet! b:istext
    return
  endif

  " Format
  setlocal textwidth=80
  setlocal selectmode=mouse
  setlocal autoindent

  if &filetype == 'markdown'
    setlocal expandtab
  endif

  setlocal wrap      " Wrap lines larger than the document margin
  setlocal linebreak " Split the current line when it overtakes the
                     " document margin
  setlocal nonumber  " Do not display line numbers
  if v:version >= 703
    setlocal norelativenumber
  endif

  let b:istext = 1
endfunction

function! writing#toogle_foa()
  if &formatoptions =~ 'a'
    setlocal formatoptions-=a
  else
    setlocal formatoptions+=a
  endif
endfunction
