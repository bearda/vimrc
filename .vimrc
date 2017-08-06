set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch

map <F1> <Esc>:wa<CR>
map <F2> :mksession! ~/mysession.vim<CR>
map <F3> :source ~/mysession.vim<CR>

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

nnoremap ; :

" pathogen
filetype off
execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
au! FileType python setl nosmartindent

"autocomplete stuff
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ( ()<Esc>i


" filenames like *.xml, *.html, *.xhtml, ...
" " Then after you press <kbd>&gt;</kbd> in these files, this plugin will try
"" to close the current tag.
 "
 let g:closetag_filenames = '*.html,*.xhtml,*.phtml'
"
 " filenames like *.xml, *.xhtml, ...
 " This will make the list of non closing tags self closing in the specified
" files.
 "
 let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
"
" " integer value [0|1]
" " This will make the list of non closing tags case sensitive (e.g. `<Link>`
" will be closed while `<link>` won't.)
" "
 let g:closetag_emptyTags_caseSensitive = 1
"
" " Shortcut for closing tags, default is '>'
" "
 let g:closetag_shortcut = '>'
"
" " Add > at current position without closing the current tag, default is '<leader>>'
" "
let g:closetag_close_shortcut = '<leader>>'''"''"''"''""')"]"''"""''"""
