-- ~/.config/nvim/lua/venit/init.lua

vim.g.mapleader = " "

require("venit")
require("venit.lazy_init")
require("venit.set")
require("venit.remap")

--treesitter
vim.api.nvim_create_autocmd('FileType', {
  pattern = { '<filetype>' },
  callback = function() vim.treesitter.start() end,
})
require('nvim-treesitter').install { 'rust', 'javascript', 'zig','python','c','cpp', 'go' }


vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevel = 99 
vim.opt.autoindent = true
vim.opt.smartindent = true

--cmp
vim.lsp.enable({ 'clangd', 'pyright', 'lua_ls','gopls' })


--catpuccin
vim.cmd.colorscheme "catppuccin-nvim"

