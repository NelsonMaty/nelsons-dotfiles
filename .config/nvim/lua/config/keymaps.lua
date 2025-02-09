-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local normal_mode_keybinds = {
  { "-", require("oil").open, { desc = "Open parent directory" } },
  { "<leader>bD", ":%bd|bd#<cr>", { desc = "Close all buffers including current" } },
  { "<leader>ss", ":split<Return>", { desc = "Split window horizontally" } },
  { "<leader>sv", ":vsplit<Return>", { desc = "Split window vertically" } },
  { "x", '"_x', {} },
  { "<C-a>", "gg<S-v>G", { desc = "Select all text in current document" } },
  {
    "<leader>tt",
    require("twilight").toggle,
    { desc = "Toggle Twilight" },
  },
  { "<leader>e", require("mini.files").open, { desc = "Open Mini file explorer" } },
}

vim.keymap.set("n", "<leader>cp", function()
  local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  local file_path = vim.fn.expand("%:p")
  local relative_path = file_path:sub(#git_root + 2) -- Trim the Git root + '/'
  vim.fn.setreg("+", relative_path)
  print("Copied: " .. relative_path)
end, { silent = true })

local insert_mode_keybinds = {
  { "jj", "<Esc>", { desc = "Exit insert mode" } },
}

for _, map in ipairs(normal_mode_keybinds) do
  vim.keymap.set("n", map[1], map[2], map[3])
end

for _, map in ipairs(insert_mode_keybinds) do
  vim.keymap.set("i", map[1], map[2], map[3])
end
