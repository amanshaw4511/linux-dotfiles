
" source rc files
source ~/.config/nvim/rc/plugins.vim
source ~/.config/nvim/rc/properties.vim
source ~/.config/nvim/rc/mappings.vim

" source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/floaterm.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/bufferline.vim
source ~/.config/nvim/plugins/devicons.vim
source ~/.config/nvim/plugins/lspconfig.vim
source ~/.config/nvim/plugins/comment.vim

lua require('rc_treesitter')
lua require('rc_lspconfig')
lua require('rc_lualine')
lua require('rc_nvimtree')
