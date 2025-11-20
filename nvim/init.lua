local vim = vim

require('plugin')

-- settings
vim.o.number = true
vim.o.relativenumber = false
vim.o.shiftwidth = 4
vim.o.softtabstop = -1
vim.o.expandtab = true

-- keymaps
vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>tt', ':tabNext<cr>')
vim.keymap.set('n', '<leader>tn', ':tabnew .<cr>')
-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>w', ':write<cr>')
vim.keymap.set('n', '<leader>ff', telescope.find_files)
vim.keymap.set('n', '<leader>fg', telescope.live_grep)
vim.keymap.set('n', '<leader>fb', telescope.buffers)

-- lsp
vim.lsp.enable({'clangd', 'lua_ls', 'rust_analyzer', 'pylsp', 'ocamllsp'})
