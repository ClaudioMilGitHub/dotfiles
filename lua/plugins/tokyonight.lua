-- Setup tokyonight
require("tokyonight").setup({
  style = "storm",
  transparent = true,
  styles = {
    comments = { italic = true }
  },
  lualine_bold = true,
})
vim.cmd("colorscheme tokyonight")

