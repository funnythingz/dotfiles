-- 基本設定
vim.opt.compatible = false
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.ruler = true
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.title = true
vim.opt.showmatch = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.smarttab = true

-- カラースキーム設定
vim.cmd [[
  syntax enable
  hi PmenuSel cterm=reverse ctermfg=33 ctermbg=222 gui=reverse guifg=#3399ff guibg=#f0e68c
]]

-- ファイルタイプ設定
vim.cmd [[
  au BufRead,BufNewFile *.scala    set tabstop=4 shiftwidth=4 softtabstop=4
  au BufRead,BufNewFile *.scss     set tabstop=2 shiftwidth=2 softtabstop=2
  au BufRead,BufNewFile *.ts       set tabstop=4 shiftwidth=4
  au BufRead,BufNewFile *.hbs      set tabstop=4 shiftwidth=4 softtabstop=4
  au BufRead,BufNewFile *.coffee   set filetype=coffee
  au BufRead,BufNewFile *.go       set tabstop=4 shiftwidth=4 softtabstop=4
  au BufRead,BufNewFile *.js       set tabstop=2 shiftwidth=2 softtabstop=2
  au BufRead,BufNewFile *.jsx      set tabstop=4 shiftwidth=4 softtabstop=4
  au BufRead,BufNewFile *.vue      set tabstop=2 shiftwidth=2 softtabstop=2
  au BufRead,BufNewFile *.html     set tabstop=2 shiftwidth=2 softtabstop=2
  au BufNewFile,BufRead *.tag      setlocal filetype=javascript
]]

-- キーマップ
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true })

-- Emmet
vim.g.user_emmet_install_global = 0
vim.cmd [[autocmd FileType html,css EmmetInstall]]

-- Syntastic
vim.g.syntastic_mode_map = { mode = 'passive', active_filetypes = {'go'} }
vim.g.syntastic_go_checkers = { 'go', 'golint' }
