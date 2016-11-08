" YouCompleteMe
let g:ycm_semantic_triggers = {
	\ 'haskell': ['.', ' '],
	\ 'javascript,python' : ['.'],
	\ 'vim'  : ['re![_a-zA-Z]+[_\w]*\.'],
	\ 'c'    : ['->', '.'],
	\ 'cpp'  : ['->', '.', '::'],
	\ 'rust' : [      '.', '::']
	\ }
let g:ycm_collect_identifiers_from_comments_and_strings = 1

" neco-ghc
let g:necoghc_enable_detailed_browse = 1

" EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" vim-markdown
let g:vim_markdown_folding_disabled = 1

" airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline_theme='base16color'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
" }}}

" vim-mustache-handlebars
let g:mustache_operators = 0

" Emmet
let g:user_emmet_mode='i' " use only insert mode
let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall " enable just for html
