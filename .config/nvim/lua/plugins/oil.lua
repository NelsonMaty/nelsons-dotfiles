return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- Optional configuration
    default_file_explorer = true,
    skip_confirm_for_simple_edits = true,
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    },
    prompt_save_on_select_new_entry = false,
    skip_confirm_for_simple_edits = true,
  },
  config = function(_, opts)
    require("oil").setup(opts)
  end,
}
