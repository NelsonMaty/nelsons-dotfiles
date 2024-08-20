return {
    -- Dracula color scheme
    {
        'Mofiqul/dracula.nvim',  -- or 'maxmx03/dracula.nvim' depending on your preference
        lazy = false,
        priority = 1000,
        config = function()
            require('dracula').setup({
                -- Optional configurations
                transparent = false,  -- Set to true if you want a transparent background
                styles = {
                    comments = { italic = true },
                    functions = { bold = true },
                    keywords = { italic = true },
                },
                on_colors = function(colors)
                    -- Customize colors if needed
                end,
                on_highlights = function(highlights)
                    -- Customize highlights if needed
                end,
            })
            vim.cmd.colorscheme('dracula')  -- Set the colorscheme
        end
    },

    -- Status line
    { 'nvim-lualine/lualine.nvim', lazy = false },
{
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },  -- Required dependency
        cmd = "Telescope",  -- Load on command
        config = function()
            require("telescope").setup({
                defaults = {
                    -- Default configuration options
                },
                pickers = {
		    live_grep = {
			    additional_args = function(opts)
				    return {'--hidden'}
			    end
			},
			grep_string = {
			    additional_args = function(opts)
				    return {'--hidden'}
			    end
			},
                    -- Configuration for built-in pickers
		    find_files = {
			    hidden = true,
		    },
                },
                extensions = {
                    -- Load any extensions here
                },
            })
            -- Load any extensions you want to use
            -- require("telescope").load_extension("your_extension")
        end,
    },
    -- Treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
    -- LazyGit
    {
        "kdheepak/lazygit.nvim",
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit" },
        },
    },
    -- Oil for managing files
    {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- Required for file icons
    config = function()
	    require('oil').setup({
		    view_options = {
		      show_hidden = true,
		    }
	    })
end,
  },
}

