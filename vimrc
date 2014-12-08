set shell=/bin/zsh
set encoding=utf-8
filetype plugin indent on
set cursorline
set antialias
set nu
set visualbell
"set showcmd
set noshowmode
set laststatus=0
set hidden
"set wildmenu
"set showmatch
colorscheme Monokai
set listchars=tab:▸\ ,eol:¬,nbsp:⋅,trail:•
set colorcolumn=81
set hlsearch
set nowrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 

" window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab switching
nnoremap <S-h> gT
nnoremap <S-l> gt

" move to beggining of the line
nnoremap B ^ 
" move to end of the line
nnoremap E $
" Navigation on insert mode
imap <C-k> <Up>
imap <C-j> <Down>
imap <C-h> <Left>
imap <C-l> <Right>

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" insert end
imap <S-CR> <CR><CR>end<Esc>-cc

"set omnifunc=syntaxcomplete#Complete
autocmd Filetype python setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype go setlocal ts=4 sts=4 sw=4 expandtab
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2 expandtab
autocmd Filetype html setlocal ts=2 sts=2 sw=2 expandtab

"ruby autocomplete
"autocmd FileType eruby,ruby set omnifunc=rubycomplete#Complete
autocmd FileType eruby,ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType eruby,ruby let g:rubycomplete_rails = 1 
autocmd FileType eruby,ruby let g:rubycomplete_classes_in_global = 1

"**NeoBundle config
 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 
 NeoBundle 'mattn/calendar-vim'
 NeoBundle 'roman/golden-ratio'
 NeoBundle 'tpope/vim-endwise'
 NeoBundle 'vim-ruby/vim-ruby'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'tristen/vim-sparkup'
 NeoBundle 'fatih/vim-go'
 
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'SirVer/ultisnips'
 let g:UltiSnipsExpandTrigger="<c-w>"
 let g:UltiSnipsJumpForwardTrigger="<c-s-j>"
 let g:UltiSnipsJumpBackwardTrigger="<c-s-k>"
 let g:UltiSnipsSnippetDirectories=["UltiSnips"]

 NeoBundle 'hail2u/vim-css3-syntax'
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

 NeoBundle 'scrooloose/nerdtree'
"NerdTree
""autocmd vimenter * if !argc() | NERDTree | endif
map <C-\> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif 
let g:NERDTreeWinPos = "right"


 NeoBundle 'airblade/vim-gitgutter'
"GitGutter
let g:gitgutter_sign_column_always = 1
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_lines = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '*' 
let g:gitgutter_sign_removed = '-' 
let g:gitgutter_sign_modified_removed = '*-'

 NeoBundle 'kien/ctrlp.vim'
" ctrlp config
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|\.(o|swp|pyc|egg)$'


 NeoBundle 'davidhalter/jedi-vim'
"Jedi Config
autocmd FileType python setlocal completeopt-=preview

" Powerline config
"let g:Powerline_symbols = 'fancy'


 NeoBundle 'itchyny/lightline.vim'
if !has('gui_running')
 set t_Co=256
endif
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'component': {
      \   'readonly': '%{&readonly?"Read Only":""}',
      \ },
      \ 'separator': { 'left': '','right': '' },
     \ 'subseparator': { 'left': '|', 'right': '|' }
     \ }


 NeoBundle 'Lokaltog/vim-easymotion'
" Easy Motion
let g:EasyMotion_leader_key = '<Leader>'

if exists('$TMUX') " allows cursor change in tmux mode
        let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
        let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
        let &t_SI = "\<Esc>]50;CursorShape=1\x7"
        let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

 NeoBundle 'Valloric/YouCompleteMe.git' , {
             \ 'build' : {
             \    'unix' : './install.sh --clang-completer --system-libclang'
             \ },
	     \ }
" YouCompleteMe
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

 NeoBundle 'xolox/vim-notes'
 NeoBundle 'xolox/vim-misc'
"Notes
let g:notes_directories = ['~/Dropbox/Notes','~/Documents/Notes']
let g:notes_suffix = '.txt'
highlight notesItalic cterm=italic

NeoBundle 'terryma/vim-multiple-cursors'
let g:multi_cursor_start_key='<F6>'

 NeoBundle 'tpope/vim-haml'

 NeoBundle 'vim-scripts/jQuery'
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

 NeoBundle 'cakebaker/scss-syntax.vim'
au BufRead,BufNewFile *.scss set filetype=scss.css

"function! s:swap_lines(n1, n2)
"    let line1 = getline(a:n1)
"    let line2 = getline(a:n2)
"    call setline(a:n1, line2)
"    call setline(a:n2, line1)
"endfunction
"
"function! s:swap_up()
"    let n = line('.')
"    if n == 1
"        return
"    endif
"
"    call s:swap_lines(n, n - 1)
"    exec n - 1
"endfunction
"
"function! s:swap_down()
"    let n = line('.')
"    if n == line('$')
"        return
"    endif
"
"    call s:swap_lines(n, n + 1)
"    exec n + 1
"endfunction
"
"noremap <silent> <C-k> :call <SID>swap_up()<CR>
"noremap <silent> <C-j> :call <SID>swap_down()<CR>

  NeoBundle 'matze/vim-move'
let g:move_key_modifier = 'C'

 call neobundle#end()


 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
 "NeoBundle End Config **"
