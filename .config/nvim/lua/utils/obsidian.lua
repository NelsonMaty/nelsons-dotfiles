local M = {}

function M.create_new_file(folder, extension, prompt)
  local filename = vim.fn.input(prompt or "New file name: ")

  -- Ensure the folder path ends with a forward slash
  if not folder:match("/$") then
    folder = folder .. "/"
  end

  if filename ~= "" then
    -- Append the extension if provided
    if extension and extension ~= "" then
      filename = filename .. "." .. extension
    end

    local full_path = folder .. filename
    vim.cmd("edit " .. full_path)
  end
end

function M.create_handbook_note()
  M.create_new_file(
    "/Users/nelson/Library/Mobile Documents/iCloud~md~obsidian/Documents/pandora/My tech handbook/notes/",
    "md",
    "Handbook Note: "
  )
  vim.cmd("ObsidianTemplate handbook")
end

function M.find_files_in_pandora()
  require("telescope.builtin").find_files({
    prompt_title = "Type file name",
    cwd = "/Users/nelson/Library/Mobile Documents/iCloud~md~obsidian/Documents/pandora/",
  })
end

function M.live_grep_in_pandora()
  require("telescope.builtin").live_grep({
    prompt_title = "Type word",
    cwd = "/Users/nelson/Library/Mobile Documents/iCloud~md~obsidian/Documents/pandora/",
  })
end

return M
