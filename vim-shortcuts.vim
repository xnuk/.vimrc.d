" Paste mode
set pastetoggle=<F2>

" leader: <Space>
let g:mapleader=' '

" the arrow key magic
nnoremap N h|vnoremap N b
nnoremap I l|vnoremap I w
nnoremap u k|vnoremap u k
nnoremap e j|vnoremap e j

" word surffing
nnoremap n b|vnoremap n b
nnoremap i w|vnoremap i w

nnoremap w viw

" paragragh surffing
nnoremap U {|vnoremap U {
nnoremap E }|vnoremap E }

" h is now insert mode
nnoremap h i
nnoremap H I
xnoremap <silent> <expr> h (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")
xnoremap <silent> <expr> H (mode() =~# "[V]" ? "\<C-v>0o$I" : "I")

" kill, with no mercy.
nnoremap <C-c> :q!<Enter>
" paste
inoremap <C-v> <C-[>pa
" undo
inoremap <C-z> <C-[>ui
nnoremap zz u

" sudo save
cmap w!! w !sudo tee > /dev/null %

" indent
nnoremap <Tab> >>
nnoremap <S-Tab> <<
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" enter key to split line
nnoremap <CR> i<CR>

" swap ; :
nnoremap ; :|vnoremap ; :
nnoremap : ;|vnoremap : ;

" new tab
nnoremap <C-t> :tabfind<Space>

" tab switching
nnoremap j gT
nnoremap l gt

" autocomplete
inoremap <C-Space> <C-x><C-o>

" disable highlight temporary
nnoremap <silent> <Leader><Leader> :noh<CR>

" CtrlP
nnoremap <silent> b :CtrlPBuffer<CR>
nnoremap <silent> <Leader>; :CtrlPCmdPalette<CR>

" vim-easy-align
vmap <Leader>e <Plug>(EasyAlign)
nmap <Leader>e <Plug>(EasyAlign)
