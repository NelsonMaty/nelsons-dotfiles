local config = require('nvim-treesitter.configs')
config.setup({
  ensure_installed = { "lua", "bash" },
  highlight = { enable = true },
  indent = { enable = true },
})
