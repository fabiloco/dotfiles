-- source $HOME/.config/nvim/vim-plug/plugins.vim
vim.cmd 'source $HOME/.config/nvim/vim-plug/plugins.vim'

require('vim-closetag');
require('lightline');
require('treesitter');


vim.opt.exrc=true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.scrolloff = 8
-- vim.opt.signcolumn="number"
vim.opt.signcolumn="yes"
vim.opt.wrap = false


vim.cmd [[
  set nocompatible
  filetype plugin on
  syntax on
	let g:vim_jsx_pretty_colorful_config = 1
  set colorcolumn=100
  set background=dark
	""" colorscheme purify 
	colorscheme gruvbox 
  """ syntax enable

  """ prettier
  " let g:prettier#autoformat = 1
]]

-- require("mason").setup()
-- require("mason-lspconfig").setup()

-- Nerdtree keymaps

--[[
   [vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>')
   [vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
   [vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
   [vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')
   ]]

-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')


local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
lsp.nvim_workspace()

-- ======== NVIM TREE ==========

vim.keymap.set('n', 'tt', ':NvimTreeToggle<CR>');
vim.keymap.set('n', '<leader>f', ':NvimTreeFocus<CR>');

-- empty setup using defaults
-- require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    side = "right",
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },

  },
  renderer = {
    group_empty = true,
  },
})

-- importing my custom snippets
require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./my-cool-snippets" } })
