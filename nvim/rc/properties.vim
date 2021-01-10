



syntax on		                "Turning Syntax on
set nobackup nowritebackup      " this is recommended by coc

set number                      " set line number
set numberwidth=1               " set line number width
set encoding=UTF-8              " set encoding
set tabstop=4                   " Insert 2 spaces for a tab
set shiftwidth=4                " Change the number of space characters inserted for indentation
set smarttab                    " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                   " Converts tabs to spaces
set smartindent                 " Makes indenting smart
set autoindent                  " Good auto indent
set formatoptions-=cro          " Stop newline continuation of comments
set t_Co=256                    " Support 256 colors
set termguicolors
set cursorline                  " enable cursor line highlighting

" theme
" colorscheme neotrix
colorscheme gruvbox

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""" PLUGIN SETTINGS """""""""""""""""""""""""" 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" " IndentLine {{
" let g:indentLine_char =  ''                   " 
" let g:indentLine_first_char = ''                
" let g:indentLine_showFirstIndentLevel = 1
" let g:indentLine_setColors = 0
" " }}


let g:airline_powerline_fonts=1

let g:limelight_conceal_ctermfg='gray'

" Set to 1 to enable italicized comments or strings
let g:neotrix_italicize_comments = 1    " options : 0 , 1
let g:neotrix_italicize_strings = 1     " options : 0 , 1
let g:neotrix_dark_contrast = "retro"   " options : retro, retro_hard, galaxy, galaxy_hard

let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_transparent_bg =1
let g:gruvbox_contrast_dark = "hard"    " options : soft, medium, hard
" let g:gruvbox_contrast_light = "hard"    " options : soft, medium, hard


