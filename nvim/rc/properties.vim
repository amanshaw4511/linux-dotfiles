syntax on                       "Turning Syntax on
set number                      " set line number
set relativenumber
set numberwidth=1               " set line number width

set encoding=UTF-8              " set encoding

set tabstop=4                   " Insert 2 spaces for a tab
set shiftwidth=4                " Change the number of space characters inserted for indentation
set smarttab                    " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                   " Converts tabs to spaces
set smartindent                 " Makes indenting smart
set autoindent                  " Good auto indent
set formatoptions-=cro          " Stop newline continuation of comments set t_Co=256                    " Support 256 colors
set termguicolors
set cursorline                  " enable cursor line highlighting

set hidden
set spell
set splitright

set list
set listchars=trail:~

set scrolloff=8
" set sidescrolloff=8


" Django recommended
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4


" html
autocmd FileType html set sw=2
autocmd FileType html set ts=2
" js
autocmd FileType javascript set sw=2
autocmd FileType javascript set ts=2
" react
autocmd FileType javascriptreact set sw=2
autocmd FileType javascriptreact set ts=2

" enable mouse support
set mouse=a
let NERDTreeMouseMode=2
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""" THEMES """""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""" PLUGIN SETTINGS """""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" In your init.lua or init.vim


"
" airblade/vim-rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', 'src']
let g:rooter_targets = '/,*'


" vim-gitgutter
set signcolumn=yes

" limelight
let g:limelight_conceal_ctermfg='gray'

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_transparent_bg =1
let g:gruvbox_contrast_dark = "hard"    " options : soft, medium, hard
" let g:gruvbox_contrast_light = "hard"    " options : soft, medium, hard

