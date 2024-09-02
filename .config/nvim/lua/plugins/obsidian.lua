return {
  {
    "epwalsh/obsidian.nvim",
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown", -- Load the plugin for markdown files
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      templates = {
        folder = "templates",
      },
      disable_frontmatter = true,
      workspaces = {
        { name = "pandora", path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/pandora/" },
      },
    },
  },
}
