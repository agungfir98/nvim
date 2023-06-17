local status, gitsigns = pcall(require, 'gitsigns')

if (not status) then
	print('gitsigns belum terpasang')
end


gitsigns.setup {}
