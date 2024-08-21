return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
    cmd = "Telescope",                          -- Load on command
    config = function()
      require("telescope").setup({
        defaults = {
          -- Default configuration options
          file_ignore_patterns = { "^.git/", "^node_modules/" },
        },
        pickers = {
          live_grep = {
            additional_args = function(opts)
              return { '--hidden' }
            end
          },
          grep_string = {
            additional_args = function(opts)
              return { '--hidden' }
            end
          },
          -- Configuration for built-in pickers
          find_files = {
            hidden = true,
          },
        },
        extensions = {
          -- Load any extensions here
        },
      })
      -- Load any extensions you want to use
      -- require("telescope").load_extension("your_extension")
    end,
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      })
      require("telescope").load_extension("ui-select")
    end
  }
}
