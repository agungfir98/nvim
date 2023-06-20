vim.cmd('autocmd!')

vim.wo.number = true

local g = vim.g
local vo = vim.opt

g.mapleader = " "
g.maplocalleader = " "

vo.autoindent = true
vo.title = true
vo.tabstop = 2
vo.smarttab = true
vo.shiftwidth = 2
vo.showcmd = true
vo.hlsearch = true
vo.smartindent = true
vo.cmdheight = 1

