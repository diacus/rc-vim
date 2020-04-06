" ===========================================================================
" FILE        : autoload/markdown.vim
" DESCRIPTION : Helper fuctions for ftplugin/markdown.vim
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Mon Apr  6 15:37:56 CDT 2020
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
    setlocal makeprg=make\ -f\ ~/.vim/tools/make/markdown.mk
  endif
  setlocal shiftwidth=2
  setlocal tabstop=2
  setlocal nolinebreak
  setlocal foldlevel=3
endfunction
