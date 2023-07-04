local status, comment = pcall(require, 'nvim_comment')

if (not status) then
	print('nvim comment not installed')
end

comment.setup({
	comment_empty = false
})
