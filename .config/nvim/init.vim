unlet! skip_defaults_vim
set clipboard=unnamedplus
call plug#begin(stdpath('data') . '/plugged')
Plug 'nvim-treesitter/nvim-treesitter' , {'do': ':TSUpdate'}
Plug 'dylanaraps/wal.vim'
call plug#end()
lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
      enable = true,              -- false will disable the whole extension
    },
}
EOF

colorscheme wal
