vim.pack.add({
	"https://github.com/folke/tokyonight.nvim",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/brenoprata10/nvim-highlight-colors",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/nvim-telescope/telescope.nvim",
	"https://github.com/nvim-lua/plenary.nvim",
	"https://github.com/rachartier/tiny-cmdline.nvim",
	"https://github.com/saghen/blink.cmp",
})

require("plugins.tokyonight")
require("plugins.lualine")
require("plugins.highlight")
require("plugins.tiny-cmdline")
require("plugins.blink")
require("plugins.conform")
require("plugins.lspconfig")
