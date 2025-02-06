return {
  "echasnovski/mini.diff",
  keys = {
    {
      "<leader>gd",
      function()
        require("mini.diff").toggle_overlay(0)
      end,
      desc = "Toggle mini.diff overlay with git diff",
    },
  },
}
