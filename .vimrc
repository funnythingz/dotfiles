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
set ts=2
set smartindent
set smarttab
set cursorline
"set cursorcolumn

set directory=$HOME/.vimbackup

set nocompatible

if !1 | finish | endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tomasr/molokai'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'Blackrush/vim-gocode'
NeoBundle 'slim-template/vim-slim'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'tpope/vim-rails'

"NeoBundle 'scrooloose/nerdtree'
"let NERDTreeShowHidden = 0

call neobundle#end()

filetype plugin indent on

NeoBundleCheck
nmap <F9> :NERDTreeToggle

let g:molokai_original = 1
let g:rehash256 = 1

au BufRead,BufNewFile,BufReadPre *.scala    set filetype=scala tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.scss set filetype=scss tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile,BufReadPre *.ts set filetype=typescript tabstop=4 shiftwidth=4
au BufRead,BufNewFile,BufReadPre *.hbs  set filetype=handlebars tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
au BufRead,BufNewFile,BufReadPre *.go   set filetype=go tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType go autocmd BufWritePre <buffer> Fmt
set rtp^=$GOPATH/src/github.com/nsf/gocode/vim
