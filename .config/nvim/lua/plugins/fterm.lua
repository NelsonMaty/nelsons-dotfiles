return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      -- Optional configuration settings
      border = "single", -- Change to "double" or "curved" if desired
      dimensions = {
        height = 0.8, -- Adjust height as needed
        width = 0.8, -- Adjust width as needed
      },
    })
  end,
}
