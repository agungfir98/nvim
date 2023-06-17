require('gnuga.base')
require('gnuga.highlight')
require('gnuga.plugins')
require('gnuga.tema')

local has = vim.fn.has

local is_win = has "win32"

if is_win then
	require('gnuga.windows')
end

