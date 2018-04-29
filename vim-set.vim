set nocompatible " no vi-compatible

set mouse=vin " mouse mode
set winaltkeys=no " allow mapping of alt key

set t_Co=256
set t_ut=
set background=dark
set lazyredraw " don't redraw while executing macros/mappings

set nostartofline " keep cursor in the same column (especially indenting stuff)
set virtualedit=block " cursor can be positioned where there is no actual character in Visual block mode

set whichwrap=b,s,[,],<,>

set scrolloff=2 " minimal number of lines to keep above and below the cursor

set incsearch " while typing a search command, show where the pattern
set hlsearch " highlight search

set laststatus=2 " always show status

" command line completion
set wildmenu
set wildmode=list:longest,full

set number " show line number
set numberwidth=1

set foldenable " enable fold
set foldlevelstart=20 " but open all folds by default
set foldmethod=marker

set tabstop=4 " tab size
set shiftwidth=4 " indent size
set noexpandtab " I LOVE HARD TAB
set autoindent " copy indent from current line
set smartindent
set colorcolumn=80,81,82,83,120,121,122,123 " 120 chars and 80 chars both

" show invisible chars
set list
set listchars=tab:\|\ ,trail:·,extends:>,precedes:<,nbsp:+

" open new split panes to right and bottom
set splitbelow
set splitright

" use sh shell for command execute
if &shell =~# 'fish$'
	set shell=sh
endif

" mouse mode in tmux
if !empty($TMUX)
	set ttymouse=xterm2
endif
