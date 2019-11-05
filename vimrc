set shell=/bin/zsh
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/seoul256.vim'
call plug#end()

" General Configuration
set nu
syntax on
set smartindent
set shiftwidth=2 " number of spaces when shift indenting
set tabstop=2 " number of visual spacer per tab
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tab to spaces
set cursorline " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " hightlight matches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/* " ignore files and directories
set noswapfile

" Airline configuration
let g:airline_theme='dark_minimal'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" Colorscheme configuration
colo seoul256
set background=dark

" Navigation on insert mode
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

" Folding
set foldmethod=indent
set foldlevel=1
set foldclose=all
let ruby_fold=1               " Ruby
let javaScript_fold=1         " JavaScript
