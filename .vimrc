if !1 | finish | endif

if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=/Users/funnythingz/.vim//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/funnythingz/.vim/')
  call dein#begin('/Users/funnythingz/.vim/')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/funnythingz/.vim//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('Shougo/unite.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('tomasr/molokai')
  call dein#add('Shougo/unite.vim')
  call dein#add('ujihisa/unite-colorscheme')
  call dein#add('derekwyatt/vim-scala')
  call dein#add('vim-jp/vim-go-extra')
  call dein#add('Blackrush/vim-gocode')
  call dein#add('slim-template/vim-slim')
  call dein#add('leafgarland/typescript-vim')
  call dein#add('clausreinke/typescript-tools')
  call dein#add('Quramy/tsuquyomi')
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('kchmck/vim-coffee-script')
  call dein#add('scrooloose/nerdtree')
  call dein#add('spllr/vim-padrino')
  call dein#add('yosssi/vim-ace')
  call dein#add('google/vim-ft-go')
  call dein#add('nicklasos/vim-jsx-riot')
  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('elzr/vim-json')
  call dein#add('scrooloose/syntastic')
  call dein#add('yosssi/vim-gcss')
  call dein#add('mattn/emmet-vim')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('othree/html5.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('posva/vim-vue')
  call dein#add('gabrielelana/vim-markdown')
  call dein#add('AtsushiM/sass-compile.vim')
  call dein#add('digitaltoad/vim-pug')
  "call dein#add('basyura/unite-rails')
  call dein#add('funnythingz/unite-rails', {'rev': 'features/webpacker'})
  call dein#add('tpope/vim-endwise')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on

if dein#check_install()
  call dein#install()
endif

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
set t_Co=256
set t_Sf=[3%dm
set t_Sb=[4%dm

syntax enable
hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c

set hlsearch
set incsearch
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

au BufRead,BufNewFile,BufReadPre *.scala    set filetype=scala tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.scss     set filetype=scss tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile,BufReadPre *.ts       set filetype=typescript tabstop=4 shiftwidth=4
au BufRead,BufNewFile,BufReadPre *.hbs      set filetype=handlebars tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.coffee   set filetype=coffee
au BufRead,BufNewFile,BufReadPre *.go       set filetype=go tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.js       set tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.jsx      set tabstop=4 shiftwidth=4 softtabstop=4
au BufRead,BufNewFile,BufReadPre *.vue      set tabstop=2 shiftwidth=2 softtabstop=2
au BufRead,BufNewFile,BufReadPre *.html     set tabstop=2 shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.tag setlocal ft=javascript

autocmd FileType go autocmd BufWritePre <buffer> Fmt
set rtp^=$GOPATH/src/github.com/nsf/gocode/vim

map <C-n> :NERDTreeToggle<CR>

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['go'] }
let g:syntastic_go_checkers = ['go', 'golint']

let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
