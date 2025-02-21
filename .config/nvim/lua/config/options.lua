-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.lazyvim_prettier_needs_config = true
vim.g.lazyvim_eslint_auto_format = false

vim.g.snacks_animate = false

vim.o.mouse = ""
vim.opt.guicursor =
  "n-v-c-sm:block-blinkwait175-blinkoff150-blinkon175,i-ci-ve:ver25-blinkwait175-blinkoff150-blinkon175,r-cr-o:hor20"

vim.g.lazyvim_mini_snippets_in_completion = true
