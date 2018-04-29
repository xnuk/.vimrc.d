if exists('g:loaded_emmet_vim') && g:loaded_emmet_vim
	inoremap <C-t> <C-y>,
endif

let b:AutoPairs = copy(g:AutoPairs)
let b:AutoPairs['<'] = '>'
