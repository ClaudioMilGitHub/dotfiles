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
