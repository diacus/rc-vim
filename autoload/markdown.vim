" ===========================================================================
" FILE        : autoload/markdown.vim
" DESCRIPTION : Helper fuctions for ftplugin/markdown.vim
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : mar 06 abr 2021 17:17:04 CDT
" CREATION    : vie ago  4 01:29:21 CDT 2017
" VERSION     : 2.1
" ===========================================================================

" Function taken from Stack Overflow
" https://stackoverflow.com/questions/3828606/vim-markdown-folding
function! markdown#level()
  if getline(v:lnum) =~ '^# .*$'
    return ">1"
  endif
  if getline(v:lnum) =~ '^## .*$'
    return ">2"
  endif
  if getline(v:lnum) =~ '^### .*$'
    return ">3"
  endif
  if getline(v:lnum) =~ '^#### .*$'
    return ">4"
  endif
  if getline(v:lnum) =~ '^##### .*$'
    return ">5"
  endif
  if getline(v:lnum) =~ '^###### .*$'
    return ">6"
  endif
  return "="
endfunction

function markdown#setup()
  if !filereadable('Makefile')
    let s:directory = expand('<spath>:p:h')
    let &l:makeprg = 'make -f ' . s:directory . '/../tools/make/markdown.mk'
  endif
  setlocal shiftwidth=2
  setlocal tabstop=2
  setlocal nolinebreak
  setlocal foldlevel=3
endfunction
