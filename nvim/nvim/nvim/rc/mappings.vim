let mapleader=" "


" remap <esc> 
inoremap jk <esc>
inoremap kj <esc>
cnoremap jk <esc>
cnoremap kj <esc>
 

" tabs maping
nnoremap <leader>th :tabprev<CR>
nnoremap <leader>tl :tabnext<CR>
nnoremap <leader>tH :tabfirst<CR> 
nnoremap <leader>tL :tablast<CR>

nnoremap <leader>tn :tabnext<space>
nnoremap <leader>te :tabedit<space>
nnoremap <leader>tm :tabmove<space>

""""""""""""""""""""""""""""""""""""""""
""""""""""""   WINDOWS   """"""""""""""
""""""""""""""""""""""""""""""""""""""""

""" splits window 
" new : open new window below
nnoremap <leader>wn :new<CR>
" vnew : open new window right
nnoremap <leader>wv :vnew<CR>

""" close window
" close : close current window
nnoremap <leader>wC <c-w>c
" only : close other windows
nnoremap <leader>wO <c-w>o


""" moving cursor on window
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h

""" move window
nnoremap <leader>wJ <c-w>J
nnoremap <leader>wK <c-w>K
nnoremap <leader>wL <c-w>L
nnoremap <leader>wH <c-w>H
" rotate clockwise
nnoremap <leader>wr <c-w>r
" rotate anticlokwise
nnoremap <leader>wR <c-w>R
" exchange window with next
nnoremap <leader>wx <c-w>x
" move current window to new tab
nnoremap <leader>wT <c-w>T

""""""""""""""""""""""""""

" easy insersion of of a tailing ; or , form normal mode
nnoremap ;; A;<Esc>
nnoremap ,,, A,<Esc>
nnoremap ,, ea,<Esc>

" Allow gf to open non-existng file
nmap gf :edit <cfile><cr>

"""""""""Terminal Mode"""""""""
tnoremap <Esc> <C-\><C-n>
tnoremap jk <C-\><C-n>


""""""""" git gutter """""""""
nnoremap <leader>gj :GitGutterNextHunk<CR>
nnoremap <leader>gk :GitGutterPrevHunk<CR>
nnoremap <leader>gp :GitGutterPrevHunk<CR>

" nvim config
command! Vsource	source ~/.config/nvim/init.vim
command! Vinit		tabedit ~/.config/nvim/init.vim
command! Vmap		tabedit ~/.config/nvim/rc/mappings.vim
command! Vprop		tabedit ~/.config/nvim/rc/properties.vim
command! Vplug		tabedit ~/.config/nvim/rc/plugins.vim


" tools
" programming run
nnoremap <leader>rj :w <CR>:!java %<CR>
nnoremap <leader>rp :!python3 %<CR>
nnoremap <leader>rb :!bash %<CR>
nnoremap <leader>rs :!scala %<CR>

"""""" Rust """"""
" nnoremap <leader>rr :!rofi -e "$(rustc % -o /tmp/rustexe && /tmp/rustexe)"<CR>
nnoremap <leader>rr :!rustc % -o /tmp/rustexe && /tmp/rustexe <CR>
" nnoremap <leader>rr :!rofi -e "$(cargo run)"<CR>
nnoremap <leader>rcr :!cargo run  
nnoremap <leader>rcb :!cargo build<CR> 
nnoremap <leader>rcc :!cargo check
nnoremap <leader>rcf :!cargo fmt<CR>

nnoremap <leader>rc :!rofi -e "$(gcc % -o /tmp/cexe && /tmp/cexe)"<CR>



function! MyGitGutterOptionsSink (selected) 
    let command = split(a:selected, " : ")[0]
    let cmd = "normal! :" . command . "\n"
    execute cmd
endfunction

function! MyGitGutterOptionsSource()
    let options = { "GitGutterToggle" : "Turn on/off gitgutter", 
                \ "GitGutterBufferToggle" : "Turn on/off gitgutter in buffer",
                \ "GitGutterSignsToggle" : "Show git diff signs",
                \ "GitGutterLineHighlightsToggle" : "show highlighed line",
                \ "GitGutterLineNrHighlightsToggle" : "show highlighed number",
                \ "GitGutterNextHunk" : "goto next chunk",
                \ "GitGutterPrevHunk" : "goto prev. chunk",
                \ "GitGutterStageHunk" : "staged the chunk",
                \ "GitGutterUndoHunk" : "unstaged the chunk",
                \ "GitGutterPreviewHunk" : "preview the prev. version of chunk",
                \ "GitGutterFold" : "fold/unfold the chunks",
                \}
    let option_list = []
    for key in keys(options)
        let s = printf("%-35S : %s" , key, options[key])
        let option_list = insert(option_list, s)
    endfor
    return option_list
endfunction

command! MyGitGutterOptions call fzf#run(fzf#wrap({
            \ 'source'  : MyGitGutterOptionsSource() ,
            \ 'sink' : function("MyGitGutterOptionsSink")
            \ }))

" fzf
nnoremap <leader><leader> :FZF<CR>
nnoremap <c-c> "+y
nnoremap <c-v> "+p 

