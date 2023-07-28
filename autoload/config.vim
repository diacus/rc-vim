" ===========================================================================
" FILE        : autoload/config.vim
" DESCRIPTION : Users's Vim configuration
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Thu Jul 27 10:43:06 PM CST 2023
" CREATION    : sáb ago  5 23:53:30 CDT 2017
" VERSION     : 2.1
" ===========================================================================

function! config#window_resize()
  let txt_width = &textwidth > 0 ? &textwidth : 80
  let num_width = &number == 1 ? &numberwidth : 0
  let &columns = num_width + txt_width
  let &lines = 50
endfunction

function! config#hidden_list()
  let hidden_files = [
    \ '__pycache__/**',
    \ '.*\.pyc',
    \ '.*\.o',
    \ '.*\.swp',
    \ '.*~',
    \ '.git',
    \ '.DS_Store',
    \ '**/node_modules/**',
    \ 'tags'
    \ ]

  return join(hidden_files, ',')
endfunction

function! config#netrw_browsex_viewer()
  let viewers = { 'Linux': 'xdg-open', 'MacOS': 'open', 'Windows': 'expl2.cmd' }
  return viewers[util#identify_platform()]
endfunction

function config#netrw_tree_style()
  let g:netrw_liststyle = 3
  let g:netrw_browse_split = 4
  let g:netrw_winsize = 20
endfunction

function config#netrw_full_style()
  let g:netrw_liststyle = 2
  let g:netrw_browse_split = 0
  let g:netrw_winsize = 0
endfunction

function config#netrw()
  let g:netrw_banner=0
  let g:netrw_hide=0
  let g:netrw_browsex_viewer=config#netrw_browsex_viewer()

  if exists('g:netrw_style')
    if g:netrw_style == 'tree'
      call config#netrw_tree_style()
    elseif g:netrw_style == 'full'
      call config#netrw_full_style()
    endif
  endif
endfunction

function! config#zenmode_toogle()
  if exists('b:did_development_setup')
    call config#cursor_cross_toogle()
    call config#line_numbering_toogle()
  else
    setlocal cursorline!
  endif

  if exists('g:syntax_on')
    syntax off
  else
    syntax on
  endif
endfunction

function config#splits_resize_toogle()
  if (!exists('g:split_resize') || g:split_resize != 1)
    let g:split_resize = 1
  else
    unlet g:split_resize
    set winwidth=20
  endif
endfunction

function config#splits_resize()
  if (!exists('g:split_resize') || g:split_resize != 1)
    return
  endif
  set winwidth=85
  wincmd =
endfunction
