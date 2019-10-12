set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath

set mouse=a
syntax on
filetype plugin indent on
syntax enable
set number        " shows line number
set showcmd
set wildmenu
set showmatch
set hlsearch
set clipboard=unnamed   "Lets you copy from outside nvim
set history=1000
set expandtab     " Insert spaces when TAB is pressed.
set tabstop=4     " Render TABs using this many spaces.
set shiftwidth=4  " Indentation amount for < and > commands.
set nojoinspaces

set ignorecase
set smartcase

colorscheme gruvbox 

autocmd Filetype python nnoremap <buffer> <F9> :w<CR>:exec '! python3' "%"<CR>

let g:airline_theme='angr'
let g:airline_powerline_fonts = 1


autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=menuone,noselect,noinsert
set shortmess+=c
inoremap <c-c> <ESC>
" make it fast
let ncm2#popup_delay = 5
let ncm2#complete_length = [[1, 1]]
" Use new fuzzy based matches
let g:ncm2#matcher = 'substrfuzzy'

call plug#begin('~/.vim/plugged')
"Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2'
" Fast python completion (use ncm2 if you want type info or snippet support)
Plug 'HansPinckaers/ncm2-jedi'
" Words in buffer completion
Plug 'ncm2/ncm2-bufword'
" Filepath completion
Plug 'ncm2/ncm2-path'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sainnhe/edge'
Plug 'chriskempson/base16-vim'
Plug 'skywind3000/asyncrun.vim'

call plug#end()

