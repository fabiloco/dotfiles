local status_ok, cursorline = pcall(require, "nvim-cursorline")
if not status_ok then
	return
end

cursorline.setup({
	cursorline = {
		enable = true,
		timeout = 1000,
		number = false,
	},
	cursorword = {
		enable = true,
		min_length = 1,
		hl = { underline = true },
	},
})
