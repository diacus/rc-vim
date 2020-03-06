" ===========================================================================
" FILE        : autoload/config.vim
" DESCRIPTION : Users's Vim configuration
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : Thu Mar  5 23:51:00 CST 2020
" CREATION    : sáb ago  5 23:53:30 CDT 2017
" VERSION     : 2.1
" ===========================================================================

function! config#margin()
  let txt_width = &textwidth > 0 ? &textwidth + 1 : 80
  if exists('b:margin')
    execute 'match Normal /\%>'. txt_width . 'v.\+/'
    unlet b:margin
  else
    execute 'match ErrorMsg /\%>'. txt_width . 'v.\+/'
    let b:margin = 1
  endif
endfunction

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
