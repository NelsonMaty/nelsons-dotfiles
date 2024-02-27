-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local telescope_builtin = require("telescope.builtin")
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>fg", telescope_builtin.live_grep, {})

-- Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- My custom keymaps
vim.keymap.set("n", "<leader>cc", "iconsole.log()<esc>", { desc = "Insert console.log()" })
vim.keymap.set("n", "gb", ":Gitsigns blame_line<CR>", { desc = "Show commit blame for current line" })
vim.api.nvim_set_keymap("n", "<PageUp>", "20k", { noremap = true })
vim.api.nvim_set_keymap("n", "<PageDown>", "20j", { noremap = true })
