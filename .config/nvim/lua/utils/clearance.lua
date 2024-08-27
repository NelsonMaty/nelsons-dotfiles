local M = {}

-- Function to close all buffers and leave one window open
function M.resetBuffersAndWindows()
  -- Close all buffers
  vim.cmd("bufdo bd")

  -- Get the current window ID
  local current_window = vim.api.nvim_get_current_win()

  -- Close all windows except the current one
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    if win ~= current_window then
      vim.api.nvim_win_close(win, false) -- Close the window without forcing
    end
  end
end

return M
