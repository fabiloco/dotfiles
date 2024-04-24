require("alucard.options")
require("alucard.plugins")
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

require('lspconfig').gdscript.setup {}
vim.g.skip_ts_context_commentstring_module = true
require('ts_context_commentstring').setup {}

require("ibl").setup(
  {
    indent = { char = ".", smart_indent_cap = true },
    scope = { enabled = true },

  }
)
