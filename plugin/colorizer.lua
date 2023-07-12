local status, colorizer = pcall(require, 'colorizer')

if(not status) then
	print('colorizer belum terinstall')
	return
end


colorizer.setup();
