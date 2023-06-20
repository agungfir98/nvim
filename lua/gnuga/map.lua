local km = vim.keymap


km.set('n', 'te', ':tabedit<Cr>')


-- nvim tree mapping
km.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')


-- Moving line mapping
km.set('n', 'J', ':m .+1<CR>')
km.set('n', 'K', ':m .-2<CR>')
-- moving multiple line mapping
km.set('v', 'K', ":m '<-2<CR>gv=gv")
km.set('v', 'J', ":m '>+1<CR>gv=gv")






