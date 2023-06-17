require('tokyonight').setup({
	style = "night",
	transparent = true,
	terminal_colors = true
})
require('lualine').setup {
	options = {
		theme = 'tokyonight'
	}
}

vim.cmd "colorscheme tokyonight-night"
