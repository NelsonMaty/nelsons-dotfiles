-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Prevent me from overusing hkjl for moving
local utils = require("utils.discipline")
utils.cowboy()

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
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Oil
keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })

-- Telescope
keymap.set("n", "<leader>fn", ":Telescope notify<CR>", { desc = "List recent notifications" })

-- Undo tree
keymap.set("n", "<leader>uu", require("undotree").toggle, { desc = "Toggle undotree" })

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Refactoring
vim.keymap.set({ "n", "x" }, "<leader>r", function()
  require("refactoring").select_refactor()
end)

-- Key mapping to close all buffers and leave one window open
vim.keymap.set(
  "n",
  "<leader>bD",
  require("utils.clearance").resetBuffersAndWindows,
  { silent = true, desc = "Close all buffers and leave one window open" }
)

-- Keymaps for FTerm
vim.keymap.set("n", "<leader>`", "<CMD>lua require('FTerm').toggle()<CR>")
vim.keymap.set("t", "`", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>")

-- Keymaps for Obsidian
keymap.set("n", "<leader>oh", require("utils.obsidian").create_handbook_note, { desc = "Create handbook note" })
keymap.set("n", "<leader>of", require("utils.obsidian").find_files_in_pandora, { desc = "Find note in pandora" })
keymap.set("n", "<leader>o/", require("utils.obsidian").live_grep_in_pandora, { desc = "Search word in pandora" })
