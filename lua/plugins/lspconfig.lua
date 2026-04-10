vim.api.nvim_create_autocmd("FileType", {
	pattern = { "typescript", "javascript", "lua" },
	once = true,
	callback = function()
		require("lsp.ts_ls")
		require("lsp.lua_ls")
	end,
})
