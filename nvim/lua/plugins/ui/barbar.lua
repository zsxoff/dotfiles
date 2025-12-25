-- The neovim tabline plugin.
-- https://github.com/romgrk/barbar.nvim

return {
    "romgrk/barbar.nvim",
    version = "v1.9.1",
    enabled = false,

    dependencies = {
        "lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },

    init = function()
        vim.g.barbar_auto_setup = false
    end,

    opts = {
        -- Enable/disable animations
        animation = true,

        -- Automatically hide the tabline when there are this many buffers left.
        -- Set to any value >=0 to enable.
        auto_hide = true,

        -- Enable/disable current/total tabpages indicator (top right corner)
        tabpages = true,

        -- A buffer to this direction will be focused (if it exists) when closing the current buffer.
        -- Valid options are 'left' (the default), 'previous', and 'right'
        focus_on_close = "left",

        -- Enable highlighting file icons in inactive buffers
        highlight_inactive_file_icons = true,
    },
}
