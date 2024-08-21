return {
  'mhinz/vim-startify',
  config = function()
    -- Show an empty buffer
    vim.g.startify_empty_line = 1

    vim.g.startify_session_persistence = 1

    -- Configure Startify to show recent files and sessions
    vim.g.startify_lists = {
      { type = 'files',    header = { '   Recent Files' } },
      { type = 'sessions', header = { '   Sessions' } },
    }

    -- Limit the number of recent files displayed
    vim.g.startify_files_number = 5
    vim.g.startify_padding_left = 6
  end
}
