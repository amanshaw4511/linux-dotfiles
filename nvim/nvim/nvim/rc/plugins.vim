

" plugins

call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'voldikss/vim-floaterm'
" Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'vifm/vifm.vim'

    " Plug 'preservim/nerdtree' |
    "         \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    "             \ Plug 'ryanoasis/vim-devicons'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'airblade/vim-rooter'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Telescope Things
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
" Plug 'fannheyward/telescope-coc.nvim'


" LSP 
Plug 'neovim/nvim-lspconfig'
" auto completetion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

" Comment
Plug 'numToStr/Comment.nvim'

Plug 'nvim-lualine/lualine.nvim'

Plug 'sainnhe/everforest'
"
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
"
" git support
    Plug 'tpope/vim-fugitive'
    " git diff left side column
    " Plug 'airblade/gitgutter' :: not working install using method shown in GitHub
    "
    " beautiful header and tabs icon in vim
Plug 'akinsho/bufferline.nvim'

     " for syntax syntax highlighting
     Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-refactor'

     " show css color in css file
     Plug 'ap/vim-css-color'

     " dim paragraph above and below the active paragraph
     Plug 'junegunn/limelight.vim'

     " distraction free writing by removing ui and centering everything
     Plug 'junegunn/goyo.vim'

     " show indent line
     Plug 'Yggdroot/indentLine'

     "
     " JavaScript highlight
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'

     " Color-schemes
     Plug 'morhetz/gruvbox'     " https://github.com/morhetz/gruvbox/wiki/Configuration#gruvbox_contrast_dark
     
call plug#end()
