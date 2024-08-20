-- Disabling warning messages on checkhealth
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

require('core.bootstrap')

local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set('n', '<leader> ', builtin.find_files, { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find string in files" })
keymap.set("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Browse git commits" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Search for the word under cursor" })
