-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>bD", ":%bd|bd#<cr>", { desc = "Close all buffers including current" })
vim.keymap.set("n", "<leader>sb", require("snipe").open_buffer_menu, { desc = "Open Snipe buffer menu" })
