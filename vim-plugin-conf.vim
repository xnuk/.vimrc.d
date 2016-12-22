" YouCompleteMe
let g:ycm_semantic_triggers = {
	\ 'haskell,elm': ['.', ' '],
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

" supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" Emmet
let g:user_emmet_mode='ni' " use only normal and insert mode
let g:user_emmet_install_global = 0
autocmd FileType html EmmetInstall " enable just for html

" Startify
au User Startified
	\ execute 'silent! nunmap <buffer> n' |
	\ execute 'silent! nunmap <buffer> i' |
	\ execute 'silent! nunmap <buffer> e' |
	\ execute 'silent! nunmap <buffer> u'

let g:startify_custom_indices = ['a', 'r', 's', 't']
let g:startify_session_sort = 1
let g:startify_change_to_vcs_root = 1

" vim-gitgutter
let g:gitgutter_map_keys = 0

" elm-vim
let g:elm_setup_keybindings = 0

" VimExplorer
let g:VEConf_usingVim = 1
let g:VEConf_vimOpenCommand = "tabfind"
let g:VEConf_singleFileActions = {}
let g:VEConf_singleFileHotKeys = {}

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'
