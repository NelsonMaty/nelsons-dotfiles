-- Disabling warning messages on checkhealth
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })
