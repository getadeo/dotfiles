set shell=/bin/zsh
set encoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/seoul256.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'roman/golden-ratio'
call plug#end()

" General Configuration
set relativenumber
set novisualbell
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
set clipboard=unnamed

" Airline configuration
let g:airline_theme='angr'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set laststatus=2
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" airline unicode symbols
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_left_sep = '»'
"let g:airline_right_sep = '«'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'

" Colorscheme configuration
colo seoul256
set background=dark

" Folding
set foldmethod=syntax
set foldlevel=1
set foldnestmax=5
"set foldclose=all
let ruby_fold=1               " Ruby
let javaScript_fold=1         " JavaScript

" Window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"tab navigation
nnoremap tn  :tabnext<CR>
nnoremap tp  :tabprev<CR>
nnoremap tl  :tablast<CR>
"nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap tq  :tabclose<CR>


" Yanking to clipboard
vnoremap <C-S-c> "*y

" Navigation on insert mode
"imap <C-k> <Up>
"imap <C-j> <Down>
"imap <C-h> <Left>
"imap <C-l> <Right>

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Moving lines up and down
nnoremap <C-S-j> :m .+1<CR>==
nnoremap <C-S-k> :m .-2<CR>==
inoremap <C-S-j> <Esc>:m .+1<CR>==gi
inoremap <C-S-k> <Esc>:m .-2<CR>==gi
vnoremap <C-S-j> :m '>+1<CR>gv=gv
vnoremap <C-S-k> :m '<-2<CR>gv=gv

" Nerdtree configuration
map <C-\> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
let g:NERDTreeWinPos = "right"

autocmd FileType nerdtree setlocal noreadonly

let NERDTreeIgnore=['\.pyc$']

" FZF configuration
nnoremap <C-p> :FZF<CR>

" Ag Configuration
nnoremap <C-]> :Ag<CR>
