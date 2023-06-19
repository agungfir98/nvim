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
