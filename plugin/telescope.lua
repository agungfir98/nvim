local telescope = require('telescope')
local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

local function telescope_buffer_dir()
	return vim.fn.expand('%:p:h')
end

telescope.setup {
	defaults = {
		file_ignore_patterns = {
			"node_modules"
		},
		mappings = {
			n = {
				["q"] = actions.close
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
		}
	}
}

telescope.load_extension("file_browser")

vim.keymap.set('n', '<c-p>', builtin.find_files)
vim.keymap.set('n', 'sf', function ()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
	})
end)
