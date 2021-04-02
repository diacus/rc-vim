" ===========================================================================
" FILE        : autoload/explore.vim
" DESCRIPTION : File explorer customization
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" CREATION    : Thu Apr  1 18:41:11 CST 2021
" ===========================================================================

function! explore#lexplore_toggle()
  if exists('g:lexplore_on')
    let g:netrw_liststyle = g:explore_netrw_list_style_backup
    unlet g:explore_netrw_list_style_backup
    unlet g:lexplore_on
  else
    let g:explore_netrw_list_style_backup = g:netrw_liststyle
    let g:lexplore_on = 1
  endif

  Lexplore 25
endfunction
