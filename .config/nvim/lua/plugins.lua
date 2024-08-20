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
}
