"CoffeeScript
set nocompatible
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
filetype plugin indent on

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'


NeoBundle 'taichouchou2/surround.vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'taichouchou2/vim-javascript'
NeoBundle 'kchmck/vim-coffee-script'

au BufRead,BufNewFile,BufReadPre *.coffee    set filetype=coffee
autocmd FileType coffee    setlocal sw=2 sts=2 ts=2 et
au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
nnoremap <silent> <C-C> :CoffeeCompile vert <CR><C-w>h


"
syntax on

set hlsearch
set ignorecase
set tabstop=2
set shiftwidth=2
set number
set ruler
set softtabstop=0
set expandtab
set title

set showmatch
set autoindent
set smarttab
set cursorline
set cursorcolumn

set directory=$HOME/.vimbackup
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]


colorscheme molokai

nmap <F9> :NERDTreeToggle

"HTML 5 tags
syn keyword htmlTagName contained article aside audio bb canvas command
syn keyword htmlTagName contained datalist details dialog embed figure
syn keyword htmlTagName contained header hgroup keygen mark meter nav output
syn keyword htmlTagName contained progress time ruby rt rp section time
syn keyword htmlTagName contained source figcaption
syn keyword htmlArg contained autofocus autocomplete placeholder min max
syn keyword htmlArg contained contenteditable contextmenu draggable hidden
syn keyword htmlArg contained itemprop list sandbox subject spellcheck
syn keyword htmlArg contained novalidate seamless pattern formtarget
syn keyword htmlArg contained formaction formenctype formmethod
syn keyword htmlArg contained sizes scoped async reversed sandbox srcdoc
syn keyword htmlArg contained hidden role
syn match   htmlArg "\<\(aria-[\-a-zA-Z0-9_]\+\)=" contained
syn match   htmlArg contained "\s*data-[-a-zA-Z0-9_]\+"

au BufRead,BufNewFile,BufReadPre *.ts   setlocal shiftwidth=4 expandtab filetype=typescript

"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"neobundle setting
"https://github.com/Shougo/neobundle.vim
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
filetype plugin indent off
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))
 
NeoBundle 'Shougo/neobundle.vim'
 
auto completion
NeoBundle 'Shougo/neocomplcache.vim'

NeoBundle 'leafgarland/typescript-vim'

filetype indent plugin on
syntax on



"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
"NeoComplCache setting
"https://github.com/Shougo/neocomplcache.vim
"----------------------------------------------------
"----------------------------------------------------
"----------------------------------------------------
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
inoremap <expr><S-TAB> pumvisible() ? "\<Down>" : "\<TAB>"
