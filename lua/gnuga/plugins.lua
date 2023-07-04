local status, packer = pcall(require, 'packer')

if (not status) then
	print ('Packer belum terinstall')
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
	use "wbthomason/packer.nvim"

	use "olimorris/onedarkpro.nvim" -- neovim tema

	use "nvim-tree/nvim-web-devicons"
	use "nvim-lualine/lualine.nvim"

	use "nvim-tree/nvim-tree.lua"

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
	use "nvim-telescope/telescope-file-browser.nvim"

	use "lewis6991/gitsigns.nvim"

	use "akinsho/bufferline.nvim"

	use "nvim-treesitter/nvim-treesitter"

	use "windwp/nvim-autopairs" --nvim autopairs
	use "windwp/nvim-ts-autotag"

	use "lukas-reineke/indent-blankline.nvim"

	use "MunifTanjim/prettier.nvim" -- Plugin for neovim built in LSP client
	use "jose-elias-alvarez/null-ls.nvim" -- Nvim language server to inject LSP diagnostic, code actions and so on via lua.

	use "terrortylor/nvim-comment"

end)
