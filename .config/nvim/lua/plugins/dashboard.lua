math.randomseed(os.time()) -- Seed the random number generator

local quotes = {
  -- Vim-specific quotes
  "\"I don't always use Vim, but when I do, I can't exit it\"",
  '"In a world of IDEs, be a Neovim" - Ancient Programmer Proverb',
  '"Dear diary, Day 47: Still trying to exit Vim" - Anonymous',
  '":wq your way through life" - Vim Philosophy',
  '"Some people use Vim, others haven\'t discovered the escape key yet"',
  '"Why did the Vim user cross the road? To :q! the other side"',

  -- Programming humor with Vim twist
  '"Behind every great programmer is a :previous_command in Vim"',
  '"Keep calm and press ESC"',
  '"In case of fire: 1. git commit 2. git push 3. :wq 4. leave building"',

  -- Programmer wisdom with humor
  '"The best editor is the one you can exit from - oh wait..." - Vim Enthusiast',

  -- Modal editing jokes
  '"I tried to talk to a girl in normal mode, but she preferred insert mode"',
  '"Life is too short for mouse movement" - Vim Zealot',
  '"Modal editing: because sometimes you just need to be in the right mode"',

  -- Configuration humor
  '"I would tell you a Neovim joke, but I\'m still configuring it"',
  '"Copy my vimrc? Sure, it\'s only 3,721 lines long!"',

  -- Classic programming humor with Vim twist
  "\"A Vim user walks into a bar. They're still there because they can't figure out how to leave\"",

  -- Lua-specific (for Neovim)
  '"Why did the Lua config file feel lonely? It had too many local variables"',

  -- Modern Neovim
  "\"VSCode? You mean 'Vim with training wheels'?\"",
  '"The only tree-sitter I trust is in my Neovim config"',
  '"LSP: Letting Someone else Parse"',

  -- Meta humor
  '"This quote is still loading... (Press any key to escape)"',
  "\"If you're reading this, you've successfully opened Neovim. Congratulations!\"",
  '"Loading verbose startup quote... Error: Quote too verbose"',

  -- Community references
  '"TJ, if you\'re reading this, thanks for telescope.nvim!"',
  '"My other editor is also Neovim"',
  '"You know you\'re a Vim user when you try to exit Microsoft Word with :q"',
}

-- Usage in your init.lua:
-- local random_quote = quotes[math.random(#quotes)]

local function generate_cowsay(text)
  -- Wrap text to 40 characters width
  local wrapped = {}
  for line in text:gmatch("([^\n]+)") do
    while #line > 40 do
      local space = line:sub(1, 40):reverse():find(" ")
      if space then
        wrapped[#wrapped + 1] = line:sub(1, 40 - space)
        line = line:sub(40 - space + 2)
      else
        wrapped[#wrapped + 1] = line:sub(1, 40)
        line = line:sub(41)
      end
    end
    wrapped[#wrapped + 1] = line
  end

  -- Build the speech bubble
  local max_len = 0
  for _, line in ipairs(wrapped) do
    max_len = math.max(max_len, #line)
  end

  local bubble = { " " .. string.rep("_", max_len + 2) }
  for _, line in ipairs(wrapped) do
    bubble[#bubble + 1] = string.format("| %-" .. max_len .. "s |", line)
  end
  bubble[#bubble + 1] = " " .. string.rep("-", max_len + 2)

  -- Fixed cow ASCII art with proper alignment
  -- Add each cow line individually with proper escaping
  bubble[#bubble + 1] = "\\  ^__^"
  bubble[#bubble + 1] = "         \\ (oo)\\_______"
  bubble[#bubble + 1] = "               (__)\\       )\\/\\"
  bubble[#bubble + 1] = "                ||----w |"
  bubble[#bubble + 1] = "                ||     ||"

  return table.concat(bubble, "\n")
end

local random_quote = quotes[math.random(#quotes)]
local cowsay_header = generate_cowsay(random_quote)

return {
  "snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        pick = function(cmd, opts)
          return LazyVim.pick(cmd, opts)()
        end,
        header = cowsay_header,
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
  },
}
