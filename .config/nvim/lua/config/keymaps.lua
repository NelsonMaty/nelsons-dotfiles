-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local normal_mode_keybinds = {
  { key = "-", command = require("oil").open, opts = { desc = "Open parent directory" } },
  { key = "<leader>bD", command = ":%bd|bd#<cr>", opts = { desc = "Close all buffers including current" } },
  { key = "<leader>sb", command = require("snipe").open_buffer_menu, opts = { desc = "Open Snipe buffer menu" } },
  { key = "ss", command = ":split<Return>", opts = { desc = "Split window horizontally" } },
  { key = "sv", command = ":vsplit<Return>", opts = { desc = "Split window vertically" } },
  { key = "x", command = '"_x', opts = {} },
  { key = "<C-a>", command = "gg<S-v>G", opts = { desc = "Select all text in current document" } },
}

for _, map in ipairs(normal_mode_keybinds) do
  vim.keymap.set("n", map.key, map.command, map.opts)
end
