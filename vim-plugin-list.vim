" vim: foldlevelstart=0 foldlevel=0 foldenable
scriptencoding utf8
call plug#begin()

Plug 'chriskempson/base16-vim'
Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

Plug 'vim-airline/vim-airline' " {{{
Plug 'vim-airline/vim-airline-themes'

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

" text object
Plug 'kana/vim-textobj-user' " custom text object

" align text vertically
Plug 'junegunn/vim-easy-align'

Plug 'terryma/vim-multiple-cursors' " like Sublime Text {{{
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<Esc>'
" }}}

Plug 'Shougo/vimproc.vim', {'do': 'make'} " interactive command execution

" language syntax
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'digitaltoad/vim-pug', {'for': 'pug'}
Plug 'wavded/vim-stylus', {'for': 'stylus'}
Plug 'vim-scripts/haskell.vim', {'for': 'haskell'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'dag/vim-fish', {'for': 'fish'}
Plug 'leafgarland/typescript-vim', {'for': 'typescript'}
Plug 'Kuniwak/vint', {'for': 'vim'}
Plug 'gutenye/json5.vim', {'for': 'json5'}
Plug 'rhysd/vim-crystal', {'for': 'crystal'}

" This DOES key binds, for mustache.
" [[ jumps to the first previous tag
" ]] jumps to the first following tag
Plug 'mustache/vim-mustache-handlebars'

" This DOES key binds, for markdown.
" `gx` open the link in browser
" `ge` open the link in Vim
" ]] go to next header
" [[ go to previous header
" ][ go to next sibling header
" [] go to previous sibling header
" ]c go to current header
" ]u go to parent header
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}

Plug 'racer-rust/vim-racer', {'for': 'rust'}
let g:racer_experimental_completer = 1

Plug 'editorconfig/editorconfig-vim'
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Plug 'xnuk/vim-editorconfig', {'branch': 'softtabstop'}

Plug 'ctrlpvim/ctrlp.vim' " {{{
Plug 'fisadev/vim-ctrlp-cmdpalette' " command auto-complete
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
" }}}

" FZF
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install --all'}
Plug 'junegunn/fzf.vim'

" see current find status
Plug 'osyo-manga/vim-anzu'

Plug 'AndrewRadev/linediff.vim' " Select lines, and execute :Linediff

" Haskell
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}

Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
let g:necoghc_enable_detailed_browse = 1

Plug 'Twinside/vim-hoogle', {'for': 'haskell'} " :Hoogle*

" Python
" Plug 'klen/python-mode', {'for': 'python'}
" Plug 'davidhalter/jedi-vim', {'for': 'python'}

Plug 'Valloric/YouCompleteMe' " autocomplete {{{
let g:ycm_semantic_triggers = {
	\ 'haskell': ['.', ' '],
	\ 'javascript,python' : ['.'],
	\ 'vim'  : ['re![_a-zA-Z]+[_\w]*\.'],
	\ 'c'    : ['->', '.'],
	\ 'cpp'  : ['->', '.', '::'],
	\ 'rust' : [' ',  '.', '::', '{']
	\ }
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_rust_src_path = '/home/xnuk/rust/src'
" }}}

" This DOES key binds. `<c-y>,` only.
Plug 'mattn/emmet-vim'

" .swp diff
Plug 'chrisbra/Recover.vim'

Plug 'mhinz/vim-startify' " start screen {{{
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
" }}}

" shows a git diff in number column
Plug 'airblade/vim-gitgutter'

" Elm
Plug 'ElmCast/elm-vim', {'for': 'elm'}

Plug 'mbbill/VimExplorer' " vim as file manager :VE {{{
let g:VEConf_usingVim = 1
let g:VEConf_vimOpenCommand = 'tabfind'
let g:VEConf_singleFileActions = {}
let g:VEConf_singleFileHotKeys = {}
" }}}

" trying
Plug 'Twinside/vim-haskellFold', {'for': 'haskell'}
Plug 'dan-t/vim-hsimport', {'for': 'haskell'}

Plug 'bitc/vim-hdevtools', {'for': 'haskell'}
"Plug 'vim-syntastic/syntastic'

" TypeScript
Plug 'Quramy/tsuquyomi'

" LICENSE templates
Plug 'antoyo/vim-licenses'

Plug 'w0rp/ale' " linter {{{

let g:ale_linters = {
	\ 'haskell': ['stack-ghc-mod', 'stack-build', 'hlint'],
	\ }

let g:ale_fixers = {
	\ 'haskell': ['hfmt', 'remove_trailing_lines', 'trim_whitespace'],
	\ 'ruby': ['rubocop', 'remove_trailing_lines', 'trim_whitespace'],
	\ 'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace']
	\ }
" }}}

" JSON
Plug 'elzr/vim-json', {'for': 'json'}

" Latex
Plug 'lervag/vimtex', {'for': ['bib', 'tex']}
Plug 'xuhdev/vim-latex-live-preview', {'for': ['bib', 'tex']}

Plug 'SirVer/ultisnips'

Plug 'honza/vim-snippets'

" wat
Plug 'pi314/ime.vim'
Plug 'pi314/ime-emoji.vim'
Plug 'xnuk/hangul-ime'

" transpose
Plug 'salsifis/vim-transpose'

Plug 'enricobacis/vim-airline-clock'

Plug 'neovimhaskell/haskell-vim'

" Word jump
" This actually binds key, and terribly overrides key. Please see manual.
" This changes behavior of w, b, e, ge, aw, iw, <C-R><C-W>
Plug 'chaoren/vim-wordmotion'

" Repeatedly pressing `v` extends visual block
" This binds key.
Plug 'xnuk/smartpairs.vim', {'branch': 'no-viv'}

Plug 'luochen1990/rainbow' " rainbow brackets

" auto suggestion by tab
" This binds key, TAB.
" and this is intentionally put here, to work properly.
" For instance, There's an IME above which eats up TAB keys.
" Plug 'ervandew/supertab'
" let g:SuperTabDefaultCompletionType = '<c-x><c-o>'

" Plug 'ajh17/VimCompletesMe'

" cycle constants
" this binds key, gs.
Plug 'AndrewRadev/switch.vim'

call plug#end()

" %
packadd! matchit

" Try to get foreground Vim
packadd! editexisting

" gdb debug with :Termdebug
packadd! termdebug

set t_Co=256
set t_ut=
set background=dark

let s:is_true_color = $TERM =~? '\v^(st-|xterm-256color)'

if s:is_true_color
	set termguicolors
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

	colo base16-tomorrow-night

	augroup SchemeTrue
		au InsertEnter * hi Normal guibg=#000000
		au InsertLeave * exec 'hi Normal guibg=#' . g:base16_gui00
	augroup END
else
	colo Tomorrow-Night

	augroup Scheme256
		au InsertEnter * colo Tomorrow-Night-Bright
		au InsertLeave * colo Tomorrow-Night
	augroup END
endif

set cursorcolumn
set relativenumber
augroup InsertCursor
	au InsertEnter * set cursorline|set nocursorcolumn
	au InsertLeave * set nocursorline|set cursorcolumn
augroup END
