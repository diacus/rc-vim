" ===========================================================================
" FILE        : ftplugin/markdown.vim
" DESCRIPTION : Specific Vim configuration for Markdown docuemts.
" MAINTAINER  : @diacus (diacus.magnuz@gmail.com)
" LAST CHANGE : vie ago  4 01:37:43 CDT 2017
" CREATION    : Wed Apr 20 01:08:50 CDT 2016
" VERSION     : 2.1
" ===========================================================================
setlocal shiftwidth=2
setlocal tabstop=2
setlocal nolinebreak
setlocal makeprg=make\ -f\ ~/.vim/tools/make/markdown.mk
setlocal foldlevel=2

" Headers for markdown documents
nnoremap <leader>h1  I#<space><ESC>
nnoremap <leader>h2  I##<space><ESC>
nnoremap <leader>h3  I###<space><ESC>
nnoremap <leader>h4  I####<space><ESC>
nnoremap <leader>h5  I#####<space><ESC>
nnoremap <leader>h6  I######<space><ESC>

" Generate the HTML document
nnoremap <F9> :silent make<CR><C-l>

" Format key mappings
nnoremap <C-b> ciw****<ESC>hP " Markdown make text style "bold"
nnoremap <C-k> ciw**<ESC>P    " Markdown make text style "italic"
nnoremap <C-c> ciw``<ESC>P    " Markdown make text style "code"

vnoremap <C-b> c****<ESC>hP " Markdown make text style "bold"
vnoremap <C-k> c**<ESC>P    " Markdown make text style "italic"
vnoremap <C-c> c``<ESC>P    " Markdown make text style "code"

" Folding
au BufEnter *.md setlocal foldexpr=markdown#level()
au BufEnter *.md setlocal foldmethod=expr
