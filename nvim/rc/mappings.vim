
let mapleader=" "

" remap <esc> 
inoremap jk <esc>
inoremap kj <esc>
cnoremap jk <esc>
cnoremap kj <esc>
 

" nvim config
command! Vsource	source ~/.config/nvim/init.vim
command! Vinit		tabedit ~/.config/nvim/init.vim
command! Vmap		tabedit ~/.config/nvim/rc/mappings.vim
command! Vprop		tabedit ~/.config/nvim/rc/properties.vim
command! Vplug		tabedit ~/.config/nvim/rc/plugins.vim

" tools



" tabs maping
nnoremap <leader>h :tabprev<CR>
nnoremap <leader>l :tabnext<CR>
nnoremap <leader>H :tabfirst<CR> 
nnoremap <leader>L :tablast<CR>

nnoremap <leader>n :tabnext<space>
nnoremap <leader>e :tabedit<space>
nnoremap <leader>m :tabmove<space>

" splits maping
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h


