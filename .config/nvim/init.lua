-- Disabling warning messages on checkhealth
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

require('core.bootstrap')

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader> ', builtin.find_files, {})
