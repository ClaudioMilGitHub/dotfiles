local colors = require("tokyonight.colors").setup()

require("vim._core.ui2").enable({}) -- enable ui2 to

require("tiny-cmdline").setup({
	border = "rounded",
	native_types = {},
})

-- Tiny cmdline border color override
vim.api.nvim_set_hl(0, "TinyCmdlineBorder", { fg = colors.bg_storm })
-- Tiny cmdline background color
-- vim.api.nvim_set_hl(0, "TinyCmdlineNormal", { bg = colors.bg_dark })
