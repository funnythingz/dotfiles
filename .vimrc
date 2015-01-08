 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible
   endif

   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#begin(expand('~/.vim/bundle/'))

 NeoBundleFetch 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/neosnippet.vim'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'ctrlpvim/ctrlp.vim'
 NeoBundle 'flazz/vim-colorschemes'

 call neobundle#end()

 filetype plugin indent on
 NeoBundleCheck
