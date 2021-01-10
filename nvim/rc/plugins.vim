

" plugins 

call plug#begin('~/.vim/plugged')
 	 Plug 'jiangmiao/auto-pairs'
	 Plug 'vim-airline/vim-airline'
	 Plug 'tpope/vim-commentary'
	 Plug 'tpope/vim-surround'
	 Plug 'neoclide/coc.nvim', {'branch':'release'}
	 Plug 'vifm/vifm.vim'
     " for java syntax
     Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
     " show css color in css file
     Plug 'ap/vim-css-color'
     
     " dim paragraph above and below the active paragraph
     Plug 'junegunn/limelight.vim'

     " distraction free writing by removing ui and centering everything
     Plug 'junegunn/goyo.vim'

     " show indent line
     Plug 'Yggdroot/indentLine'


     " Color-schemes
     Plug 'morhetz/gruvbox'     " https://github.com/morhetz/gruvbox/wiki/Configuration#ggruvbox_contrast_dark
     Plug 'kristijanhusak/vim-hybrid-material'
     Plug 'senran101604/neotrix.vim'
     Plug 'sonph/onehalf', {'rtp': 'vim/'}
     
call plug#end()
