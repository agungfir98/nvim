local status, packer = pcall(require, 'packer')

if (not status) then
	print ('Packer belum terinstall')
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use "wbthomason/packer.nvim"

	use "folke/tokyonight.nvim" -- neovim tema

	use {
		'nvim-lualine/lualine.nvim',
		requires = { "nvim-tree/nvim-web-devicons", opt = true }
	} -- Lualine status bar

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	} -- LSP package

	use {
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp"
	}
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets" -- Snipet package

	use "saadparwaiz1/cmp_luasnip"

	use "nvim-lua/plenary.nvim"
	use "nvim-telescope/telescope.nvim"

	use "lewis6991/gitsigns.nvim"

end)
