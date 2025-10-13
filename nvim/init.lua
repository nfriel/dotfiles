local vim = vim

require('plugin')

-- settings
vim.o.number = true
vim.o.relativenumber = false
vim.o.scrolloff = 4

-- keymaps
local telescope = require('telescope.builtin')
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', ':write<cr>')
vim.keymap.set('n', '<leader>ff', telescope.find_files)
vim.keymap.set('n', '<leader>fg', telescope.live_grep)
vim.keymap.set('n', '<leader>fb', telescope.buffers)

-- lsp
vim.lsp.enable({'clangd', 'lua_ls'})
