" plugins handled by Plug
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/netrw.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim' "ctrlp - full path fuzzy file etc finder
""Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8' "flake8 has pep8, F7 to activate
" requires pep8 be installed as configured
Plug 'majutsushi/tagbar' "class outline view for vim
"" tagbar requites exuberant ctags
Plug 'scrooloose/nerdtree' "filesystem for blind navigation
Plug 'tpope/vim-fugitive' "git wrapper for current file
Plug 'airblade/vim-gitgutter' "git diff in a sign column
Plug 'davidhalter/jedi-vim' "code/doc navigation
Plug 'vim-airline/vim-airline' "status/tabline
Plug 'vim-airline/vim-airline-themes' "status/tabline
Plug 'rking/ag.vim' "awk replacement, faster
"Plug 'klen/python-mode'
Plug 'jdonaldson/vaxe' "for haxe
" requires the_silver_searcher installed

call plug#end()

" line numbers
set number

" backspace
set backspace=indent,eol,start

" search
set hlsearch
set incsearch
nnoremap <silent> <leader>h :set hlsearch!<CR>

" when scrolling, tries to stay 10 lines ahead of cursor
set scrolloff=10

" move away from buffers even when there are changes
set hidden

"always show status line
set laststatus=2

" colorscheme
set background=light
colorscheme solarized

" folding
set foldmethod=indent
set foldlevel=99

" Ag searching default
vnoremap <C-H> y:Ag! <C-R>"<CR>
nnoremap <C-H> :Ag!  

" buffer navigation
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>
nnoremap <C-C> :bd<CR>

" tasklist
"map <leader>td <Plug>TaskList

"nerdtree
let g:NERDTreeWinPos = "right"
nmap <F9> :NERDTreeToggle<CR>

syntax on
filetype on
filetype plugin indent on

set linespace=0
set colorcolumn=80 " don't touch the colored line!
set shiftwidth=4   " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4      " a hard TAB displays as 4 columns
set expandtab      " insert spaces when hitting TABs
set softtabstop=4  " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround     " round indent to multiple of 'shiftwidth'
set autoindent     " align the new line indent with the previous line
set autoread 

" Setup some default ignores
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
    \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

"airline list of buffers
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline#extensions#tabline#show_buffers = 1
" airline symbols
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif
"let g:airline_left_sep = ''
"let g:airline_right_sep = ''
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.whitespace = 'Ξ'
"if !exists('g:airline_symbols')
"let g:airline_symbols = {}
"endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.spell = 'Ꞩ'
"let g:airline_symbols.notexists = '∄'
"let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols_branch = ''
let g:airline_symbols_readonly = ''
"let g:airline_symbols.linenr = ''

let g:airline_theme='solarized'

"tagbar
nmap <F8> :TagbarToggle<CR>

"Plug config
let g:plug_timeout = 300
nnoremap <silent> <leader>pi :PlugInstall<CR>

"gitgutter
let g:gitgutter_updatetime = 750
nnoremap [g :GitGutterPrevHunk<CR>
nnoremap ]g :GitGutterNextHunk<CR>

"reloding this is easier
nnoremap <silent> <leader>so :so $MYVIMRC<CR>:AirlineRefresh<CR>

