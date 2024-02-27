return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "lua-language-server",
        "vue-language-server",
        "eslint-lsp",
        "prettier",
        "html-lsp",
      })
    end,
  },
}
