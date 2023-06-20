require('tokyonight').setup({
	transparent = true,
	terminal_colors = true
})
require('lualine').setup {
	options = {
		theme = 'tokyonight'
	}
}

vim.cmd "colorscheme tokyonight-night"
