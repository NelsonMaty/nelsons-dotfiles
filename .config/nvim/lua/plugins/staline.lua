return {
  "tamton-aquib/staline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("staline").setup({
      sections = {
        left = { "-mode", "left_sep_double", " ", "file_name" },
        mid = { "lsp" },
        right = {
          {
            "StalineRecording",
            function()
              return vim.fn.reg_recording() ~= "" and " " .. vim.fn.reg_recording() or ""
            end,
          },
          "branch",
        },
      },
      defaults = {
        left_separator = "",
      },
    })

    -- Add highlight for recording indicator
    vim.api.nvim_set_hl(0, "StalineRecording", { fg = "#000000", bg = "#ff5555" })
  end,
}
