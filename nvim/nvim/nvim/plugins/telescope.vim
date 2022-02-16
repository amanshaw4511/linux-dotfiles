" https://github.com/nvim-telescope/telescope.nvim/blob/master/lua/telescope/mappings.lua
"
lua << EOF
local actions = require("telescope.actions")
require('telescope').setup{
defaults = {
    mappings = {
        i = {
            ["<c-j>"] = actions.move_selection_next,
            ["<c-k>"] = actions.move_selection_previous,
            ["<c-p>"] = actions.preview_scrolling_up,
            ["<c-n>"] = actions.preview_scrolling_down
            }
        }
    }
}
require('telescope').load_extension('fzf')
-- require('telescope').load_extension('coc')
EOF

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>bb <cmd>Telescope buffers<cr>
nnoremap <leader>gg <cmd>Telescope git_files<cr>

nnoremap <leader>fg <cmd>Telescope live_grep<cr>

" file history (equivalent to :oldfiles)
nnoremap <leader>fo <cmd>Telescope oldfiles<cr> 

" equivalent to :help
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" coc mapping -> see in coc ~/.config/nvim/plugins/coc.vim
