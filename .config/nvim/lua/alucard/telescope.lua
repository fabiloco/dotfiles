local status_ok, builtin = pcall(require, "telescope.builtin")
if not status_ok then
	return
end

local status_ok_telescope, telescope = pcall(require, "telescope")
if not status_ok_telescope then
	return
end

local status_ok_session_lens, session_lens = pcall(require, "session-lens")
if not status_ok_session_lens then
	return
end

telescope.setup({
	defaults = {
		file_ignore_patterns = { "node_modules", "vendor" },
	},
})

telescope.load_extension("session-lens")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

vim.keymap.set("n", "<leader>ft", builtin.treesitter, {})

vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gs", builtin.git_status, {})

vim.keymap.set("n", "<leader>fs", session_lens.search_session, {})
