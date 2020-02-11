" ===========================================================================
" FILE        : autoload/kb.vim
" DESCRIPTION : Helper functions for plugin/kb.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : dom ago 19 22:06:36 CDT 2018
" CREATION    : sáb ago 19 02:03:43 CDT 2017
" VERSION     : 2.1
" ===========================================================================

function! kb#set_layout()
  let platform = util#identify_platform()
  if platform == 'MacOS' "We're on Mac OS
    " TODO: There has to be a better way
    let l:kbname = system($HOME . "/.vim/tools/sh/mackbl")
    if l:kbname =~ 'U.S.' || l:kbname =~ 'US'
      let g:kb_layout='en'
    endif
  else " We assume Linux
    let g:kb_layout=util#chomp(
      \ system("localectl status | awk '/Layout/ {print $3}'")
      \)
  endif
endfunction

function! kb#es_generic_keys()
  " Some of the most useful keys in the 'en' layout are not that  easy  to
  " access in other keyboards.

  " To change to command mode quickly, use ñ because it is in the same place
  " for this layout.
  nnoremap ñ :
  vnoremap ñ :
  nnoremap Ñ :
  vnoremap Ñ :

  " To change to search mode quickly, use <space> instead of slash.
  nnoremap <space> /
  vnoremap <space> /
endfunction

function! kb#es_latam_keys()
  " Most popular leader key for latam keyboard layout is comma (,) but I want
  " to try open question mark (¿) since the keyboard is in latam Spanish.
  let mapleader="¿"

  " To jump tags easily in latam keyboard layout
  nnoremap { [
  nnoremap } ]
endfunction

function! kb#es_keys()
  " In this case, comma is OK
  let mapleader=","

  " To jump tags easily in es keyboard layout
  nnoremap ¡ <Esc>
  nnoremap ç <C-]>
endfunction

function! kb#es()
  call kb#es_generic_keys()
  call kb#es_keys()
endfunction

function! kb#latam()
  call kb#es_generic_keys()
  call kb#es_latam_keys()
endfunction

function! kb#en()
  nnoremap ; :
  vnoremap ; :
endfunction

function! kb#init()
  if !exists('g:kb_layout')
    return
  endif

  " Mappings for spanish keyboard layouts
  if index(['es', 'latam'], g:kb_layout) >= 0
    " Add spanish to spell languages, since the keyboard kayout is in spanish
    " too.
    set spelllang+=es
  endif

  let Kb = function('kb#' . g:kb_layout)
  call Kb()

endfunction
