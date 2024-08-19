-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- By default, lazyvim does not show quotes in json files.
-- By setting conceallevel to 0, I'm forcing the quotes to appaear.
vim.api.nvim_create_autocmd("Filetype", {
  pattern = { "json", "jsonc" },
  callback = function()
    vim.wo.spell = false
    vim.wo.conceallevel = 0
  end,
})
