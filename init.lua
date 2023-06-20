require('gnuga.base')
require('gnuga.highlight')
require('gnuga.plugins')
require('gnuga.tema')
require('gnuga.map')

local has = vim.fn.has

local is_win = has "win32"
local is_wsl = has "wsl"

if is_win then
	require('gnuga.windows')
end
if is_wsl then
	require('gnuga.wsl')
end
