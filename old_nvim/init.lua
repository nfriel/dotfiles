local vim = vim

vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.g.mapleader = ' '

vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')
vim.keymap.set('n', '<leader>e', ':Explore<CR>')
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>nv', ':edit ~/.config/nvim/init.lua<CR>')

vim.pack.add({
	{ src = 'https://github.com/blazkowolf/gruber-darker.nvim' },
	{ src = 'https://github.com/vague2k/vague.nvim' },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
	{ src = 'https://github.com/windwp/nvim-autopairs' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/mason-org/mason.nvim' },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/S1M0N38/love2d.nvim" },
	{ src = 'https://github.com/saghen/blink.cmp', version = 'v1.6.0', build = 'cargo build --release' },
})

require('nvim-autopairs').setup {}
require('telescope').setup {}
require('mason').setup {}
require('love2d').setup {}
require('blink.cmp').setup {}

vim.lsp.enable({ 'lua_ls', 'clangd', 'rust_analyzer', 'pylsp'})
vim.keymap.set('n', '<leader>d', function() vim.lsp.buf.definition() end)
vim.keymap.set('n', '<leader>h', function() vim.lsp.buf.hover() end)
-- vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format() end)

vim.cmd('colorscheme gruber-darker')
