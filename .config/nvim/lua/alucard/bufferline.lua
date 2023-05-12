-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

-- Navigate buffers with bufferline plugin
keymap("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>", opts)
keymap("n", "<leader>$", ":BufferLineGoToBuffer -1<CR>", opts)

keymap("n", "<leader>bd", ":bdelete <CR>", opts)
keymap("n", "<leader>bn", ":bnext <CR>", opts)
keymap("n", "<leader>bp", ":bprevious <CR>", opts)

keymap("n", "<leader>bl", ":BufferLineCloseLeft <CR>", opts)
keymap("n", "<leader>br", ":BufferLineCloseRight <CR>", opts)
keymap("n", "<leader>bmn", ":BufferLineMoveNext <CR>", opts)
keymap("n", "<leader>bmp", ":BufferLineMovePrev <CR>", opts)
keymap("n", "<leader>btp", ":BufferLineTogglePin <CR>", opts)

local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
  options = {
    themeable = true,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true,
      },
    },
    hover = {
      enabled = true,
      delay = 200,
      reveal = { "close" },
    },
  },
})
