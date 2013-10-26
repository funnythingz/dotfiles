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
"set cursorline
"set cursorcolumn



set nocompatible

if has('vim_starting')
set runtimepath+=~/.vim/neobundle.vim.git/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'molokai'

filetype plugin indent on
NeoBundleCheck

colorscheme molokai


set directory=$HOME/.vimbackup

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
let &t_Co=256

nmap <F9> :NERDTreeToggle

au BufRead,BufNewFile,BufReadPre *.ts    set filetype=typescript tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.coffee    set filetype=coffee
