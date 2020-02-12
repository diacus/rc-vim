" ===========================================================================
" FILE        : plugin/config.vim
" DESCRIPTION : Users's Vim configuration
" CREATED BY  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : mar feb 18 11:36:44 CST 2020
" CREATION    : sáb ago  5 20:45:37 CDT 2017
" VERSION     : 2.1
" ===========================================================================
syntax on
filetype plugin on
filetype indent on

let s:files_ignored = config#hidden_list()

set cursorline
set encoding=utf-8
set grepprg=grep\ -nH\ $*
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set numberwidth=6
set path+=**
set ruler
set t_Co=256
set wildmenu
let &wildignore=s:files_ignored
set splitbelow
set splitright

if has('gui_running')
  set guioptions=aegit
  call config#window_resize()
endif

" Explorer setup
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_list_hide=s:files_ignored
let g:netrw_hide=1
let g:netrw_browsex_viewer=config#netrw_browsex_viewer()

" Airline setup
if exists(':AirlineRefresh')  " Set iff airline is installed
  let g:airline_powerline_fonts = 1
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.notexists = '∄'
  let g:airline_symbols.whitespace = '☰'
endif

" Justify text
" Vim includes a macro that justifies the text, if it is present in your
" system, include it.
runtime! macros/justify.vim


" Normal mode key mappings
nnoremap <silent> <F3> :call config#margin()<CR>
" - Buffer navigation
nnoremap <Up> :ls<CR>:b
nnoremap <Left> :bprevious<CR>
nnoremap <Right> :bnext<CR>

" Insert mode key mappings
inoremap {<CR> {<CR>}<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap (<CR> (<CR>)<Esc>O

inoremap '' ''<Esc>i
inoremap "" ""<Esc>i
inoremap (( ()<Esc>i
inoremap [[ []<Esc>i
inoremap {{ {}<Esc>i
inoremap <Tab><Tab> <Esc>Ea

" Auto commands
autocmd BufNewFile,BufRead *.md set filetype=markdown
autocmd BufNewFile,BufRead *.ts set filetype=typescript

" Thank you stack overflow
" https://vi.stackexchange.com/questions/7889/cannot-exit-vim-even-using-q
autocmd FileType netrw setl bufhidden=delete
