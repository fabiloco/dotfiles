local opts = {
  filetype = {
    "typescript", "typescriptreact", "typescript.tsx",
    "javascript", "javascriptreact", "javascript.jsx"
  },
  cmp = {
    "typescript-language-server", "--stdio"
  },
  root_dir = function() return vim.loop.cwd() end
}

return opts
