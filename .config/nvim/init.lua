require('vim-options')
require('core.bootstrap')

local builtin = require("telescope.builtin")
local keymap = vim.keymap

keymap.set('n', '<leader> ', builtin.find_files, { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find string in files" })
keymap.set("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Browse git commits" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Search for the word under cursor" })
keymap.set("n", "-", require('oil').open, { desc = "Open parent directory" })
keymap.set("n", "<leader>q", require('oil').close, { desc = "Close Oil buffer" })
