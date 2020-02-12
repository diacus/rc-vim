" ===========================================================================
" FILE        : autoload/kb.vim
" DESCRIPTION : Helper functions for plugin/kb.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Feb 11 17:01:56 CST 2020
" CREATION    : sáb ago 19 02:03:43 CDT 2017
" VERSION     : 2.1
" ===========================================================================

function! kb#should_load()
  " Ensure we have g:kb_layout set and has a valid value before loading the
  " plugin
  if exists('g:did_kb')
    return 0
  endif
  if !exists('g:kb_layout')
    return 0
  endif
  if index(['en', 'es', 'latam'], g:kb_layout) == -1
    return 0
  endif

  return 1
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
  " Mappings for spanish keyboard layouts
  if index(['es', 'latam'], g:kb_layout) >= 0
    " Add spanish to spell languages, since the keyboard kayout is in spanish
    " too.
    set spelllang+=es
  endif

  let Kb = function('kb#' . g:kb_layout)
  call Kb()

endfunction
