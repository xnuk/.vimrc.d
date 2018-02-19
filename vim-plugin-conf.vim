scriptencoding utf8
" YouCompleteMe
let g:ycm_semantic_triggers = {
	\ 'haskell': ['.', ' '],
	\ 'javascript,python' : ['.'],
	\ 'vim'  : ['re![_a-zA-Z]+[_\w]*\.'],
	\ 'c'    : ['->', '.'],
	\ 'cpp'  : ['->', '.', '::'],
	\ 'rust' : [' ',  '.', '::', '{']
	\ }
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_rust_src_path = '/usr/lib/rustlib/src/rust/src'

let g:deoplete#enable_at_startup = 1

" ale
let g:ale_linters = {
	\ 'haskell': ['stack-ghc-mod', 'stack-build', 'hlint'],
	\ }

let g:ale_fixers = {
	\ 'haskell': ['hfmt', 'remove_trailing_lines', 'trim_whitespace'],
	\ 'ruby': ['rubocop', 'remove_trailing_lines', 'trim_whitespace']
	\ }

" Racer
let g:racer_experimental_completer = 1

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
let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" Emmet
let g:user_emmet_mode='ni' " use only normal and insert mode
let g:user_emmet_install_global = 0
augroup EmmetInstall
	autocmd FileType html EmmetInstall
	autocmd FileType pug EmmetInstall
	autocmd FileType php EmmetInstall
augroup end

" Startify
au User Startified
	\ execute 'silent! nunmap <buffer> n' |
	\ execute 'silent! nunmap <buffer> i' |
	\ execute 'silent! nunmap <buffer> e' |
	\ execute 'silent! nunmap <buffer> u'

let g:startify_custom_indices = ['a', 'r', 's', 't', 'd', 'h', 'n', 'e', 'i', 'o']
let g:startify_session_sort = 1
let g:startify_change_to_vcs_root = 1
let g:startify_enable_unsafe = 1
let g:startify_fortune_use_unicode = 1
let g:startify_files_number = 5

let g:startify_commands = [
	\ {'f': 'FZF'},
	\ {'p': ['vim-plug', 'PlugUpdate']},
	\ ]

let g:startify_bookmarks = [
	\ {'c': '~/.vimrc.d/vim-plugin-conf.vim'},
	\ {'l': '~/.vimrc.d/vim-plugin-list.vim'},
	\ ]

" vim-gitgutter
let g:gitgutter_map_keys = 0

" elm-vim
let g:elm_setup_keybindings = 0

" VimExplorer
let g:VEConf_usingVim = 1
let g:VEConf_vimOpenCommand = 'tabfind'
let g:VEConf_singleFileActions = {}
let g:VEConf_singleFileHotKeys = {}

" vim-multiple-cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'

"ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" incsearch
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)

" is.vim + anzu
let g:is#do_default_mappings = 0
"nnoremap } <Plug>(is-nohl)<Plug>(anzu-n-with-echo)
"nnoremap { <Plug>(is-nohl)<Plug>(anzu-N-with-echo)
"nnoremap <Tab> <Plug>(anzu-star-with-echo)<Plug>(is-nohl-1)
"nnoremap <S-Tab> <Plug>(anzu-sharp-with-echo)<Plug>(is-nohl-1)
"nnoremap * <Plug>(anzu-star-with-echo)<Plug>(is-nohl-1)
"nnoremap # <Plug>(anzu-sharp-with-echo)<Plug>(is-nohl-1)

" fzf
if executable('rg')
  command! -bang -nargs=* Rg
        \ call fzf#vim#grep('rg ' .
        \   '--color=always ' .
        \   '--glob "!.git/*" ' .
        \   '--ignore-case ' .
        \   '--line-number ' .
        \   '--column ' .
        \   '--no-heading ' .
        \   '--hidden ' .
        \   '--ignore-file=~/.gitignore_global ' .
        \   '--follow ' .
        \   <q-args>, 1,
        \   fzf#vim#with_preview('right:50%'),
        \   <bang>0)
endif

" tex
let g:vimtex_complete_close_braces = 1
let g:airline#extensions#vimtex#enabled = 1
let g:vimtex_imaps_leader = '`'
let g:vimtex_mappings_enabled = 0

" utilsnip
let g:UltiSnipsExpandTrigger='<c-k>'
let g:UltiSnipsJumpForwardTrigger='<c-k>'
let g:UltiSnipsJumpBackwardTrigger='<c-z>'
let g:UltiSnipsEditSplit='vertical'

" ime
let g:ime_plugins = ['hangul', 'emoji', 'builtin-kana']
let g:ime_toggle_english = '<C-e>'
let g:ime_cancel_input = '<C-i>'
let g:ime_select_mode = '<C-h>'

" tpope sucks
let g:endwise_no_mappings = 1

" wordmotion
let g:wordmotion_mappings = {
\ 'w' : 'i',
\ 'b' : 'n',
\ 'e' : '',
\ 'ge' : '',
\ 'aw' : '',
\ 'iw' : 'tw',
\ '<C-R><C-W>' : '' }

" smartpairs
let g:smartpairs_revert_key = '<BS>'
