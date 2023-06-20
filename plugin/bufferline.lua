local status, bufferline = pcall(require, "bufferline")

if (not status) then
	print("bufferline belum terinstall")
end

bufferline.setup {
	options = {
		mode = 'tabs',
		color_icons = true
	}
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<leader><Tab>', '<Cmd>bufferLIneCyclePrev<CR>')
