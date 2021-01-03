
" plugin settings 

let g:airline_powerline_fonts=1
let g:limelight_conceal_ctermfg='gray'

" plugins 

call plug#begin('~/.vim/plugged')
 	 Plug 'jiangmiao/auto-pairs'
	 Plug 'scrooloose/nerdtree'
     Plug 'ryanoasis/vim-devicons'
	 Plug 'vim-airline/vim-airline'
	 Plug 'tpope/vim-commentary'
	 Plug 'tpope/vim-surround'
	 Plug 'neoclide/coc.nvim', {'branch':'release'}
	 Plug 'airblade/vim-gitgutter'
     " for emacs orgmode 
     " Plug 'jceb/vim-orgmode'
     " for markdown
     " Plug 'godlygeek/tabular'
     " Plug 'plasticboy/vim-markdown' 
     
     " dim paragraph above and below the active paragraph
     Plug 'junegunn/limelight.vim'

     " distraction free writing by removing ui and centering everything
     Plug 'junegunn/goyo.vim'
     
call plug#end()
