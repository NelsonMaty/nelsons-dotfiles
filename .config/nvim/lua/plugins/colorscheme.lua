return {
  -- add dracula
  {
    "Mofiqul/dracula.nvim",
    opts = {
      -- Override the default highlight groups
      overrides = {
        -- These groups control visual selection highlighting
        Visual = { bg = "#F1FA8C", fg = "#282A36" }, -- Dracula yellow background with dark text
        VisualNOS = { bg = "#F1FA8C", fg = "#282A36" }, -- Same for non-owning selection
      },
    },
  },
  -- Configure LazyVim to load dracula
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula",
    },
  },
}
