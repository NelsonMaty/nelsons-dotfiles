return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()

    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls" },  -- Ensure only lua_ls is installed
      automatic_installation = true,     -- Automatically install missing servers
    })

    -- Configure the Lua Language Server
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },  -- Recognize 'vim' as a global variable
          },
        },
      },
    })
  end,
}
