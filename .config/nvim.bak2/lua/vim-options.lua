-- Disabling warning messages on checkhealth
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Editor default options
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
