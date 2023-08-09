require("lualine").setup{
	sections = {
		lualine_c = {"%{expand('%:p:h:t')}", "%t"}
	},
	inactive_sections = {
		lualine_c = {{
			'filename',
			file_status = true,
			path = 1
		}}
	}
}


