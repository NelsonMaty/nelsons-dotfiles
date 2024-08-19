local Util = require("lazyvim.util")

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    globalstatus = true,
    sections = {
      lualine_c = {
        { Util.lualine.pretty_path() },
      },
      lualine_y = {
        { "location", padding = { left = 0, right = 1 } },
      },
      lualine_z = {},
    },
  },
}
