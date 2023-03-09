local status_ok, iluminate = pcall(require, "iluminate")
if not status_ok then
	return
end

iluminate.configure({
	-- providers: provider used to get references in the buffer, ordered by priority
	providers = {
		"lsp",
		"treesitter",
		"regex",
	},
})
