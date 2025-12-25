-- A blazing fast and easy to configure neovim statusline plugin written in pure lua.

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "ColorScheme",

    config = function()
        require("lualine").setup({
            options = {
                theme = "jellybeans",
            },
        })
    end,
}
