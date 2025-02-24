local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>pws', function()
	local word = vim.fn.expand("<cword>")
	builtin.grep_string({ search = word });
end)
vim.keymap.set('n', '<leader>pWs', function()
	local word = vim.fn.expand("<cWORD>")
	builtin.grep_string({ search = word });
end)
vim.keymap.set('n', '<leader>ps', builtin.live_grep, {})
