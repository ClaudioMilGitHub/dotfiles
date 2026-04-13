local map = vim.keymap.set

local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- save and quit shortcuts
map("n", "<leader>w", "<cmd>w<CR>", { desc = "Salva file" })
map("n", "<leader>q", "<cmd>qa!<CR>", { desc = "Quit" })

-- open Oil.nvim
map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Open Oil" })

-- ============================================================
--  WINDOW / SPLIT
-- ============================================================

-- Navigazione tra split senza il prefisso <C-w>
map("n", "<C-h>", "<C-w>h", { desc = "Vai a pannello sinistra" })
map("n", "<C-j>", "<C-w>j", { desc = "Vai a pannello sotto" })
map("n", "<C-k>", "<C-w>k", { desc = "Vai a pannello sopra" })
map("n", "<C-l>", "<C-w>l", { desc = "Vai a pannello destra" })

-- Apri split
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split Verticale" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split Orizzontale" })
map("n", "<leader>se", "<C-w>=", { desc = "Equalizza dimensioni splits" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Chiudi split corrente" })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescop live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.buffers, { desc = "Telescope help tags" })
