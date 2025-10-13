local vim = vim

-- plugins
vim.pack.add {
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = 'https://github.com/windwp/nvim-autopairs' },
	{ src = 'https://github.com/saghen/blink.cmp' },
	{ src = 'https://github.com/projekt0n/github-nvim-theme' },
	{ src = 'https://github.com/nvim-lua/plenary.nvim' },
	{ src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
	{ src = 'https://github.com/nvim-telescope/telescope.nvim' },
}
vim.cmd.colorscheme("github_dark_default")

local plugins = {'nvim-autopairs', 'blink.cmp', 'telescope'}
for _, p in ipairs(plugins) do
	require(p).setup {}
end

