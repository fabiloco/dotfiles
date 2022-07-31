-- source $HOME/.config/nvim/vim-plug/plugins.vim
vim.cmd 'source $HOME/.config/nvim/vim-plug/plugins.vim'

vim.opt.exrc=true
vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.relativenumber=true
vim.opt.number=true
vim.opt.scrolloff = 8
vim.opt.signcolumn="yes"

vim.cmd [[
	syntax enable
	colorscheme tender
]]

-- require("mason").setup()
-- require("mason-lspconfig").setup()

-- Nerdtree keymaps

vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>')
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>')
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>')
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>')

-- Telescope keymaps
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')


local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()
lsp.nvim_workspace()


