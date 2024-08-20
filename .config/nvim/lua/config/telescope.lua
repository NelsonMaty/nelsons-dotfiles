-- Key mappings for Telescope
local telescope = require("telescope.builtin")

-- Find files
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true })

-- Live grep
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true })

-- Search in git commits
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope git_commits<cr>", { noremap = true, silent = true })

-- Search in git branches
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope git_branches<cr>", { noremap = true, silent = true })
