local function macro_recording()
  local reg = vim.fn.reg_recording()
  if reg == "" then
    return "" -- Not recording
  end
  return "Recording to @" .. reg -- Display the register being recorded
end

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    component_separators = "",
    options = {
      globalstatus = false, -- Enable global status line
    },
    sections = {
      lualine_a = {},
      lualine_b = { { "filename", path = 1 } },
      lualine_c = {
        "%=", --[[ add your center compoentnts here in place of this comment ]]
      },
      lualine_x = { "diagnostics" },
      lualine_y = {},
      lualine_z = { macro_recording },
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
