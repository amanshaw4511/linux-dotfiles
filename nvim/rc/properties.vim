
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
set formatoptions-=cro          " Stop newline continuation of comments
set t_Co=256                    " Support 256 colors
set termguicolors
set cursorline                  " enable cursor line highlighting

set hidden
set spell

set list
set listchars=trail:~

set scrolloff=8
" set sidescrolloff=8

autocmd FileType html set sw=2
autocmd FileType html set ts=2

" Django recommended
autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType python set sts=4


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

"
" airblade/vim-rooter
let g:rooter_patterns = ['.git', 'Makefile', '*.sln', 'build/env.sh', 'src']
let g:rooter_targets = '/,*'


" vim-gitgutter
set signcolumn=yes

"
" airline 
let g:airline_powerline_fonts=1

" limelight
let g:limelight_conceal_ctermfg='gray'

" gruvbox
let g:gruvbox_bold = 1
let g:gruvbox_italic = 1
let g:gruvbox_transparent_bg =1
let g:gruvbox_contrast_dark = "hard"    " options : soft, medium, hard
" let g:gruvbox_contrast_light = "hard"    " options : soft, medium, hard

"""""""""""""""""nvim-treesitter-refactor """"""""""""""""""""""""""""""""""""
"Highlights definition and usages of the current symbol under the cursor.
lua <<EOF
require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
  },
}
EOF

" Highlights the block from the current scope where the cursor is.
lua <<EOF
require'nvim-treesitter.configs'.setup {
  refactor = {
    highlight_current_scope = { enable = true },
  },
}
EOF

" " Renames the symbol under the cursor within the current scope (and current file).
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   refactor = {
"     smart_rename = {
"       enable = true,
"       keymaps = {
"         smart_rename = "grr",
"       },
"     },
"   },
" }
" EOF
" " Navigation
" lua <<EOF
" require'nvim-treesitter.configs'.setup {
"   refactor = {
"     navigation = {
"       enable = true,
"       keymaps = {
"         goto_definition = "gnd",
"         list_definitions = "gnD",
"         list_definitions_toc = "gO",
"         goto_next_usage = "<a-*>",
"         goto_previous_usage = "<a-#>",
"       },
"     },
"   },
" }
" EOF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""




" In your init.lua or init.vim
lua <<EOF
require("bufferline").setup{}
EOF
