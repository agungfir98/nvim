local status, nvim_lsp = pcall(require, 'lspconfig')

if (not status) then return end

require('mason').setup()
require('mason-lspconfig').setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"astro",
	}
})

local on_attach = function(_,_)
	vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
	vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

	vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, {})
	vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation, {})
	vim.keymap.set('n', '<leader>rf', require('telescope.builtin').lsp_reference, {})
	vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

nvim_lsp.lua_ls.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
nvim_lsp.tsserver.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
nvim_lsp.html.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
nvim_lsp.cssls.setup {}
nvim_lsp.tailwindcss.setup {}
nvim_lsp.astro.setup {
	nn_attach = on_attach,
	capabilities =  capabilities,
}
