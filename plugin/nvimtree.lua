local status, nvim_tree = pcall(require, 'nvim-tree')

if (not status) then
	print('nvim-tree belum terpasang')
end

vim.g.loaded_netrw = 0
vim.g.loaded_netrewPlugin = 1

nvim_tree.setup {
	sort_by = "case_sensitive",
}
