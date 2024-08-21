-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Find globally
-- keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Find symbols in project" })

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Git blame in line
keymap.set("n", "gb", ":Gitsigns blame_line<CR>", { desc = "Show commit blame for current line" })

-- Improve pg up and down navigation
vim.api.nvim_set_keymap("n", "<PageUp>", "25k", { noremap = true })
vim.api.nvim_set_keymap("n", "<PageDown>", "25j", { noremap = true })
