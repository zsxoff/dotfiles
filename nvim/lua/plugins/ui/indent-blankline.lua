-- Indent guides for Neovim.
-- https://github.com/lukas-reineke/indent-blankline.nvim

return {
    "lukas-reineke/indent-blankline.nvim",
    version = "3.9.0",
    main = "ibl",
    opts = {},

    config = function()
        local highlight = {
            "RainbowBlue",
            "RainbowCyan",
            "RainbowViolet",
            "RainbowRed",
            "RainbowYellow",
            "RainbowOrange",
            "RainbowGreen",
        }

        local hooks = require("ibl.hooks")

        -- Kanagawa.nvim colors from Dragon theme (https://github.com/rebelot/kanagawa.nvim)
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#c4746e" })
            vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#c4b28a" })
            vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8ba4b0" })
            vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#b6927b" })
            vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#87a987" })
            vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#8992a7" })
            vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8ea4a2" })
        end)

        require("ibl").setup({
            indent = {
                highlight = highlight,
                char = " ",
            },
            whitespace = {
                highlight = highlight,
                remove_blankline_trail = true,
            },
            scope = {
                show_end = true,
                char = "|",
                highlight = "RainbowBlue",
            },
        })
    end,
}
