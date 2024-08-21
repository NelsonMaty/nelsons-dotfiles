local config = require("nvim-treesitter.configs")
config.setup({
  auto_install = true,
  ensure_installed = {
    "lua",
    "bash",
    "json",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "yaml",
    "markdown",
    "vim",
    "dockerfile",
    "gitignore",
  },
  highlight = { enable = true },
  rainbow = { enable = true, disable = { "html" } },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
})
