
lua << EOF
require("bufferline").setup{}
EOF


nnoremap <leader>bh :BufferLineCyclePrev<CR>
nnoremap <leader>bl :BufferLineCycleNext<CR>

nnoremap <leader>bH :BufferLineMovePrev<CR>
nnoremap <leader>bL :BufferLineMoveNext<CR>

nnoremap <leader>bch :BufferLineCloseLeft<CR>
nnoremap <leader>bcl :BufferLineCloseRight<CR>

nnoremap <leader>bp :BufferLinePick<CR>
nnoremap <leader>bg :BufferLineGoToBuffer<Space>


nnoremap <leader>b1 :BufferLineGoToBuffer 1<CR>
nnoremap <leader>b2 :BufferLineGoToBuffer 2<CR>
nnoremap <leader>b3 :BufferLineGoToBuffer 3<CR>
nnoremap <leader>b4 :BufferLineGoToBuffer 4<CR>
nnoremap <leader>b5 :BufferLineGoToBuffer 5<CR>
nnoremap <leader>b6 :BufferLineGoToBuffer 6<CR>
nnoremap <leader>b7 :BufferLineGoToBuffer 7<CR>
nnoremap <leader>b8 :BufferLineGoToBuffer 8<CR>
nnoremap <leader>b9 :BufferLineGoToBuffer 9<CR>
nnoremap <leader>b0 :BufferLineGoToBuffer 0<CR>

