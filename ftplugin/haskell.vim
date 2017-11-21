setlocal softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
setlocal autoindent
setlocal omnifunc=necoghc#omnifunc
let g:ghcmod_ghc_options=['-Wall', '-fno-warn-unused-do-bind']

if !exists("g:hindent_style")
	let g:hindent_style = "fundamental"
endif

function! FormatHaskell()
	if !empty(v:char)
		return 1
	else
		let l:filter = "hindent --style " . g:hindent_style
		let l:command = v:lnum.','.(v:lnum+v:count-1).'!'.l:filter
		execute l:command
	endif
endfunction

autocmd FileType haskell setlocal formatexpr=FormatHaskell()
"autocmd BufWritePost <buffer> execute ":GhcModCheckAndLintAsync"
