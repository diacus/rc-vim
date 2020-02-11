" =============================================================================
" FILE        : vimrc/syntax/tdl.vim
" DESCRIPTION : Syntax file for TODO list documents .tdl
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Mon Apr 25 20:19:31 CDT 2016
" VERSION     : 2.1
" =============================================================================
" diacus vimrc starts

hi todoTitle     cterm=bold   ctermfg=Blue     ctermbg=NONE
hi todoTag       cterm=italic ctermfg=Gray     ctermbg=DarkGray
hi todoRuler     cterm=NONE   ctermfg=DarkBlue ctermbg=NONE
hi todoMiniRuler cterm=NONE   ctermfg=DarkRed  ctermbg=NONE
hi todoBorder    cterm=italic ctermfg=236

syn match todoTitle      /:[^a-z]\+:/
syn match todoBorder     /:-\|-:/
syn match todoRuler      /=\{80\}/
syn match todoMiniRuler  /-\{3,\}/
syn match todoTag        /([a-z1-9]\+)/
" diacus vimrc ends
