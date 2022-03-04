"  ______     ______  
" /\  ___\   /\__  _\    Genesis Tadeo
" \ \ \__ \  \/_/\ \/    getadeo.com
"  \ \_____\    \ \_\ 
"   \/_____/     \/_/
"

" TODO: separate settings in directories
" Plug ================================================================== 
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tommcdo/vim-fubitive'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'junegunn/gv.vim'
Plug 'tpope/vim-endwise'
Plug 'stephpy/vim-yaml'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'slim-template/vim-slim'
Plug 'jparise/vim-graphql'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
" END Plug ==============================================================
"
" Plugin Settings ======================================================
" Colorscheme Settings
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  let &t_8f = "\e[38;2;%lu;%lu;%lum"
  let &t_8b = "\e[48;2;%lu;%lu;%lum"
  set termguicolors
endif

syntax enable
let g:tokyonight_style = 'night'
let g:tokyonight_enable_italic = 1
colorscheme tokyonight

" Lightline configurations
set laststatus=2
set showtabline=2
set noshowmode
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline = {
      \ 'colorscheme': 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }

" FZF mapping
nnoremap <C-p> :FZF<CR>
nnoremap <C-\> :Ag<SPACE>
nnoremap <C-b> :Buffers<CR>

" IndentLine Settings
let g:indentLine_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" END Plugin Settings ======================================================

" General Settings ======================================================
" Set encoding
set encoding=UTF-8

" Autoread file changes
set autoread

"Buffer hidden
set hidden

" Copy to system clipboard
set clipboard+=unnamedplus

" Matchit configuration
runtime macros/matchit.vim

" Filtype tab settings
filetype plugin on
set expandtab
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType python setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype go setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd Filetype json setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd FileType javascriptreact setlocal tabstop=2 softtabstop=2 shiftwidth=2

" Number Settings
set number relativenumber
set numberwidth=5

" Leader remap
let mapleader = " "

" cursor and column settings
set colorcolumn=80
set cursorline

" wildmenu settings
set wildmenu
set wildmode=full

" backup settings
set nobackup
set nowritebackup

" Set update time
set updatetime=300

" END General Settings ======================================================

" Mapping Settings ==========================================================
" Buffer navigation
nnoremap <silent> <Leader>p :bprevious<CR>
nnoremap <silent> <Leader>n :bnext<CR>
nnoremap <silent> <Leader>P :bfirst<CR>
nnoremap <silent> <Leader>N :blast<CR>
nnoremap <silent> <Leader>w :bd<CR>

" Tab navigations
map tk :tabr<CR>
map tj :tabl<CR>
map th :tab<CR>
map tl :tabn<CR>
map tq :tabc<CR>

" Window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Surround word with quotes
nnoremap <Leader>" ciw"<C-r>""<Esc>
vnoremap <Leader>" c"<C-r>""<Esc>

" Surround word with single quotes
nnoremap <Leader>' ciw'<C-r>"'<Esc>
vnoremap <Leader>' c'<C-r>"'<Esc>

"Surroud word with brackets
nnoremap <Leader>[ ciw[<C-r>"]<Esc>
vnoremap <Leader>[ c[<C-r>"]<Esc>

"Surroud word with curly brackets
nnoremap <Leader>{ ciw{<C-r>"}<Esc>
vnoremap <Leader>{ c{<C-r>"}<Esc>

"Surroud word with parentheses
nnoremap <Leader>( ciw(<C-r>")<Esc>
vnoremap <Leader>( c(<C-r>")<Esc>

"Nvim Reload
nnoremap <Leader>rv :source ~/.config/nvim/init.vim<CR>

"Airline random theme
nnoremap <Leader>rt :AirlineTheme random<CR>

"Plug
nnoremap <Leader>+ :PlugInstall<CR>
nnoremap <Leader>- :PlugClean<CR>


"Navigation 10 lines
nnoremap <Leader>j 10jzz
nnoremap <Leader>k 10kzz

"Update ripper tags
nnoremap <Leader>rt :!ripper-tags -R<CR>

" Yank upwards
nnoremap <Leader>yk :-,yank<C-B><RIGHT>

"quote/unquote word
nnoremap <Leader>q" ciw""<Esc>P
nnoremap <Leader>q' ciw''<Esc>P
nnoremap <Leader>qd daW"=substitute(@@,"'\\\|\"","","g")<CR>P

" lightline buffer nav
nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" END Mapping Settings ======================================================

