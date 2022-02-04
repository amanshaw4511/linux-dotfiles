

" plugins

call plug#begin('~/.vim/plugged')
 	 Plug 'jiangmiao/auto-pairs'
	 Plug 'vim-airline/vim-airline'
	 Plug 'tpope/vim-commentary'
	 Plug 'tpope/vim-surround'
     source ~/.config/nvim/plugins/coc.vim
	 Plug 'vifm/vifm.vim'

    Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
                \ Plug 'ryanoasis/vim-devicons'

    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'


    Plug 'airblade/vim-rooter'

    source ~/.config/nvim/plugins/fzf.vim
    source ~/.config/nvim/plugins/floaterm.vim

    " git support
    Plug 'tpope/vim-fugitive'
    " git diff left side column
    " Plug 'airblade/gitgutter' :: not working install using method shown in GitHub
    "
    " beautiful header and tabs icon in vim
    source ~/.config/nvim/plugins/bufferline.vim

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
