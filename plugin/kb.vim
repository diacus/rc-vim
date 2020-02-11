" ===========================================================================
" FILE        : plugin/kb.vim
" DESCRIPTION : Mappings for keyboard layout
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : lun feb 12 23:46:31 CST 2018
" CREATION    : Sat Jan 21 23:04:50 CST 2017
" VERSION     : 2.1
" ===========================================================================
" Do not load twice
if exists('g:did_kb')
  finish
endif
let g:did_kb = 1

" Ensure we have g:kb_layout set
if !exists('g:kb_layout')
  call kb#set_layout()
endif

call kb#init()

command! -nargs=0 KbEn    call kb#en()
command! -nargs=0 KbEs    call kb#es()
command! -nargs=0 KbLatam call kb#latam()
