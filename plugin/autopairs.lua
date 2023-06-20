local status, autopairs = pcall(require, 'nvim-autopairs')

if (not status) then
	print('autopairs belum terpasang')
end

autopairs.setup {}
