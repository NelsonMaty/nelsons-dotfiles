-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>bD", ":%bd|bd#<cr>", { desc = "Close all buffers including current" })
vim.keymap.set("n", "<leader>sb", require("snipe").open_buffer_menu, { desc = "Open Snipe buffer menu" })

-- Split windows
vim.keymap.set("n", "ss", ":split<Return>", { desc = "Split window horizontally" })
vim.keymap.set("n", "sv", ":vsplit<Return>", { desc = "Split window vertically" })

-- Do things without affecting the registers
vim.keymap.set("n", "x", '"_x')

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all text in current document" })
