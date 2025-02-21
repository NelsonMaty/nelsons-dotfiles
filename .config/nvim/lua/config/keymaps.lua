-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "-", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader>bD", ":%bd|bd#<cr>", { desc = "Close all buffers including current" })
vim.keymap.set("n", "<leader>ss", ":split<Return>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<leader>sv", ":vsplit<Return>", { desc = "Split window vertically" })
vim.keymap.set("n", "x", '"_x', {})
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all text in current document" })
vim.keymap.set("n", "<leader>tt", require("twilight").toggle, { desc = "Toggle Twilight" })
vim.keymap.set("n", "<leader>e", function()
  require("mini.files").open(vim.api.nvim_buf_get_name(0), false)
end, { desc = "Open Mini file explorer" })
vim.keymap.set(
  "n",
  "<leader><space>",
  LazyVim.pick("files", { root = false }),
  { desc = "Find Files (cwd)", remap = true }
)

vim.keymap.set("n", "<leader>cp", function()
  local git_root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
  local file_path = vim.fn.expand("%:p")
  local relative_path = file_path:sub(#git_root + 2) -- Trim the Git root + '/'
  local result_path = "/add " .. relative_path
  vim.fn.setreg("+", result_path)
  print("Copied: " .. result_path)
end, { silent = true })

vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })
