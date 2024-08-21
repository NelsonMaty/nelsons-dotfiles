local builtin = require("telescope.builtin")
local keymap = vim.keymap

-- Telescope
keymap.set('n', '<leader> ', builtin.find_files, { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Fuzzy find string in files" })
keymap.set("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { desc = "Browse git commits" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
keymap.set("n", "<leader>fw", "<cmd>Telescope grep_string<cr>", { desc = "Search for the word under cursor" })

-- Oil
keymap.set("n", "-", require('oil').open, { desc = "Open parent directory" })
keymap.set("n", "<leader>q", require('oil').close, { desc = "Close Oil buffer" })

-- LSP
keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set('n', 'gi', vim.lsp.buf.implementation, { desc = "Go to implementation" })
keymap.set('n', 'gr', vim.lsp.buf.references, { desc = "Go to references" })
keymap.set('n', 'cr', vim.lsp.buf.rename, { desc = "Rename variable" })
keymap.set('n', 'f', vim.lsp.buf.format, { desc = "Format" })
keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Pop documentation" })
