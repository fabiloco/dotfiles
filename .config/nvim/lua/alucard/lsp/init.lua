local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end



require "alucard.lsp.mason"
require("alucard.lsp.handlers").setup()
require "alucard.lsp.null-ls"
