# Nelson's dotfiles

This repository contains all the dotfiles I use on my system.   
**Warning**: Don’t blindly use my settings unless you know what that entails. Use at your own risk!

![image](https://github.com/user-attachments/assets/c17b5fb7-b9c0-451d-85a1-b01314692958)

This is how my terminal looks like ☝🏻

## Contents

- vim (Neovim) config
- tmux config
- zsh config
- kitty config

## Neovim setup

### Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- [LazyVim](https://www.lazyvim.org/)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) **_(optional)_**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and _undercurl_:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_** **(This is the terminal that I use)**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_**
  - [iterm2](https://iterm2.com/) **_(Macos)_**

## Shell setup (macOS)

- [Zsh](https://www.zsh.org/) - A shell designed for interactive use
- [Homebrew](https://brew.sh/) - Package manager for macOS
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Powerline-patched fonts. I use Fira Code Nerd Font.
- [lsd](https://github.com/lsd-rs/lsd) - A replacement for the `ls` command
- [Starship](https://starship.rs/) - A cross-shell customizable prompt
