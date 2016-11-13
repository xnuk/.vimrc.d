call plug#begin()

Plug 'chriskempson/tomorrow-theme', {'rtp': 'vim'}

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" text object
Plug 'kana/vim-textobj-user' " custom text object
Plug 'michaeljsmith/vim-indent-object' " indent text object

Plug 'Shougo/vimproc.vim', {'do': 'make'} " interactive command execution

" language syntax
Plug 'jelera/vim-javascript-syntax', {'for': 'javascript'}
Plug 'digitaltoad/vim-pug', {'for': 'pug'}
Plug 'wavded/vim-stylus', {'for': 'stylus'}
Plug 'haskell.vim', {'for': 'haskell'}
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'dag/vim-fish', {'for': 'fish'}

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

" EditorConfig
Plug 'editorconfig/editorconfig-vim'

" CtrlP
Plug 'ctrlpvim/ctrlp.vim'
Plug 'fisadev/vim-ctrlp-cmdpalette' " command auto-complete

" FZF
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'

Plug 'AndrewRadev/linediff.vim' " Select lines, and execute :Linediff

" Haskell
Plug 'eagletmt/ghcmod-vim', {'for': 'haskell'}
Plug 'bitc/vim-hdevtools', {'for': 'haskell'} " :Hdev*
Plug 'eagletmt/neco-ghc', {'for': 'haskell'}
Plug 'Twinside/vim-hoogle', {'for': 'haskell'} " :Hoogle*

" Python
Plug 'klen/python-mode', {'for': 'python'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}

Plug 'Valloric/YouCompleteMe'

Plug 'tpope/vim-fugitive' " :G*

" This DOES key binds. `<c-y>,` only.
Plug 'mattn/emmet-vim', {'for': 'html'}

" .swp diff
Plug 'chrisbra/Recover.vim'

" start screen
Plug 'mhinz/vim-startify'
call plug#end()
