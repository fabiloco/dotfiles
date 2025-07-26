require("alucard.plugins")
require("alucard.options")
require("alucard.cmp")
require("alucard.lsp")
require("alucard.treesitter")
require("alucard.keymaps")
require("alucard.alpha")
require("alucard.comment")
require("alucard.nvim-tree")
require("alucard.telescope")
require("alucard.lualine")
require("alucard.bufferline")
-- require("alucard.cursorline")
require("alucard.navic")
require("alucard.rest")

-- require('lspconfig').gdscript.setup {}
vim.g.skip_ts_context_commentstring_module = true
require("ts_context_commentstring").setup({
	enable_autocmd = false,
})

require("ibl").setup({
	indent = { char = ".", smart_indent_cap = true },
	scope = { enabled = true },
})

-- require 'lspconfig'.tsserver.setup {}
require("lspconfig").ts_ls.setup({})
vim.lsp.set_log_level("debug")

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- functionality to copy - paste in wsl

if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end
