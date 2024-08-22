-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    component_separators = "",
    sections = {
      lualine_a = { { "mode" } },
      lualine_b = { "filename" },
      lualine_c = {
        "%=", --[[ add your center compoentnts here in place of this comment ]]
      },
      lualine_x = {},
      lualine_y = { "filetype" },
      lualine_z = {
        { "location" },
      },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { "location" },
    },
    tabline = {},
    extensions = {},
  },
}
