-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    component_separators = "",
    sections = {
      lualine_a = {},
      lualine_b = { { "filename", path = 1 } },
      lualine_c = {
        "%=", --[[ add your center compoentnts here in place of this comment ]]
      },
      lualine_x = { "diagnostics" },
      lualine_y = {},
      lualine_z = {},
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    tabline = {},
    extensions = {},
  },
}
