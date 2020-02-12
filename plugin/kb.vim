" ===========================================================================
" FILE        : plugin/kb.vim
" DESCRIPTION : Mappings for keyboard layout
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Tue Feb 11 17:02:27 CST 2020
" CREATION    : Sat Jan 21 23:04:50 CST 2017
" VERSION     : 2.1
" ===========================================================================
" Do not load twice
if !kb#should_load()
  finish
endif
let g:did_kb = 1

call kb#init()

command! -nargs=0 KbEn    call kb#en()
command! -nargs=0 KbEs    call kb#es()
command! -nargs=0 KbLatam call kb#latam()
