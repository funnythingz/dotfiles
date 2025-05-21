-- lazy.nvim plugin definitions
return {
  -- カラースキーム
  { "tomasr/molokai" },

  -- スニペット・補完
  { "Shougo/neosnippet.vim" },
  { "Shougo/neosnippet-snippets" },

  -- ファイル/プロジェクト管理
  { "ctrlpvim/ctrlp.vim" },
  { "scrooloose/nerdtree" },

  -- コーディング支援
  { "scrooloose/syntastic" },
  { "mattn/emmet-vim" },
  { "tpope/vim-fugitive" },
  { "tpope/vim-endwise" },

  -- 言語/フレームワーク対応
  { "leafgarland/typescript-vim" },
  { "clausreinke/typescript-tools" },
  { "Quramy/tsuquyomi" },
  { "HerringtonDarkholme/yats.vim" },
  { "vim-ruby/vim-ruby" },
  { "kchmck/vim-coffee-script" },
  { "pangloss/vim-javascript" },
  { "mxw/vim-jsx" },
  { "nicklasos/vim-jsx-riot" },
  { "elzr/vim-json" },
  { "slim-template/vim-slim" },
  { "cakebaker/scss-syntax.vim" },
  { "posva/vim-vue" },
  { "othree/html5.vim" },
  { "hail2u/vim-css3-syntax" },
  { "gabrielelana/vim-markdown" },
  { "AtsushiM/sass-compile.vim" },
  { "digitaltoad/vim-pug" },

  -- unite 関連
  { "Shougo/unite.vim" },
  { "ujihisa/unite-colorscheme" },
  { "basyura/unite-rails" },
  { "yosssi/vim-ace" },

  -- Go
  { "vim-jp/vim-go-extra" },
  { "Blackrush/vim-gocode" },
  { "google/vim-ft-go" },

  -- Scala
  { "derekwyatt/vim-scala" },

  -- ターミナル
  { "Shougo/vimshell", version = "3787e5" },

  -- その他
  { "spllr/vim-padrino" },
  { "flazz/vim-colorschemes" }
}
