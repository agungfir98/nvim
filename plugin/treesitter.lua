local status, treesitter = pcall(require, 'nvim-treesitter.configs')

if (not status) then
	print('treesitter belum terpasang')
end

treesitter.setup {
	autotag = {
		enable = true,
	},
	indent = {
		enable = true,
		disable = {}
	},

	highlight = {
		enable = true,
		disable = {}
	},

	ensure_installed = { "javascript", "typescript", "html", "css", "python", "vim", "lua", "tsx"},

	sync_install = true,
	auto_install = true,
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
