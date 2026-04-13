vim.api.nvim_create_autocmd("InsertEnter", {

	once = true,
	callback = function()
		vim.pack.add({
			{
				src = "https://github.com/saghen/blink.cmp",
				version = vim.version.range("*"),
			},
		})
		require("blink.cmp").setup({
			fuzzy = { implementation = "prefer_rust" },
			keymap = {
				preset = "default",
				["<C-space>"] = { "show", "show_documentation", "hide" },
			},

			appearance = {
				use_nvim_cmp_as_default = true,
				nerd_font_variant = "mono",
			},

			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
		})
	end,
})
