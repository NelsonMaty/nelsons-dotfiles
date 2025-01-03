-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- if the completion engine supports the AI source,
-- use that instead of inline suggestions
vim.g.ai_cmp = true
vim.opt.mouse = ""

local opt = vim.opt
opt.conceallevel = 0 -- Hide * markup for bold and italic, but not markers with substitutions
