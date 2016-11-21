source ~/.vimrc.d/vim-set.vim
source ~/.vimrc.d/vim-plugin-conf.vim
source ~/.vimrc.d/vim-plugin-list.vim
source ~/.vimrc.d/vim-shortcuts.vim

au BufNewFile,BufRead *.jison set filetype=javascript
au BufNewFile,BufRead .babelrc set filetype=json

syntax on
colo Tomorrow-Night

au InsertEnter * set cursorline
au InsertLeave * set nocursorline

au InsertEnter * colo Tomorrow-Night-Bright
au InsertLeave * colo Tomorrow-Night

if ! has('gui_running')
	set ttimeoutlen=10
	augroup FastEscape
		autocmd!
		au InsertEnter * set timeoutlen=0
		au InsertLeave * set timeoutlen=1000
	augroup END
endif
