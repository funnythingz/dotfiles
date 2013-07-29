syntax on

au BufRead,BufNewFile,BufReadPre *.ts   setlocal shiftwidth=4 expandtab filetype=typescript 

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
"set cursorcolumn
set foldmethod=syntax

set directory=$HOME/.vimbackup
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]

let &t_Co=256

colorscheme molokai

nmap <F9> :NERDTreeToggle
