" ===========================================================================
" FILE        : autoload/development.vim
" DESCRIPTION : Helper functions for plugin/development.vim
" AUTHOR      : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : sáb sep  8 15:29:00 CDT 2018
" CREATION    : Thu Jun  7 11:15:14 CDT 2018
" VERSION     : 2.1
" ===========================================================================

let s:filetypes = [
      \'c',
      \'cpp',
      \'css',
      \'go',
      \'html',
      \'java',
      \'javascript',
      \'json',
      \'lua',
      \'matlab',
      \'perl',
      \'php',
      \'python',
      \'scala',
      \'sh',
      \'sql',
      \'typescript',
      \'vim',
      \'xml',
      \'yaml',
      \'zsh',
      \]

function! development#setup()
  if exists('b:did_development_setup') || index(s:filetypes, &ft) == -1
    return
  endif

  let code_width = exists('b:code_width')? b:code_width : 80
  let code_indent = exists('b:code_indent')? b:code_indent : 2
  let code_margin = code_width + 1

  " Format
  for option in ['textwidth', 'tabstop', 'shiftwidth', 'softtabstop']
    exe 'setlocal ' . option . '=' . code_indent
  endfor

  execute 'setlocal textwidth=' . code_width
  execute 'match ErrorMsg /\%>'. code_margin .'v.\+/'

  setlocal formatoptions=croqj
  setlocal expandtab " No tabs in your source code :)

  " Show line numbers
  if v:version >= 703
    setlocal relativenumber
  endif
  setlocal number

  " Where is the cursor?
  setlocal cursorcolumn
  setlocal cursorline

  let b:did_development_setup = 1
endfunction

function! development#date()
  normal 0f:ld$
  read !date
  normal kJ$
endfunction

function! development#update_tags()
  if filereadable('tags')
    silent !ctags -R .
  endif
endfunction

function! development#make_tags()
  if exists('b:did_development_setup')
    silent !ctags -R .
  endif
endfunction
