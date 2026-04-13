local status_ok, tokyonight = pcall(require, "tokyonight.colors")
local colors = nil

if status_ok then
	colors = tokyonight.setup()
end

require("vim._core.ui2").enable({}) -- enable ui2 to

require("tiny-cmdline").setup({
	border = "rounded",
	native_types = {},
})

-- Tiny cmdline border color override
if colors then
	vim.api.nvim_set_hl(0, "TinyCmdlineBorder", { fg = colors.bg_storm })
	-- Tiny cmdline background color
	vim.api.nvim_set_hl(0, "TinyCmdlineNormal", { bg = colors.bg_dark })
else
	vim.api.nvim_set_hl(0, "TinyCmdlineBorder", { fg = "#565f89" })
	vim.api.nvim_set_hl(0, "TinyCmdlineNormal", { bg = "#000000" })
end
