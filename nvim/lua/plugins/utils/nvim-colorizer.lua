return {
    "norcalli/nvim-colorizer.lua",
    version = "*",
    config = function()
        require("colorizer").setup({
            "*", -- Highlight all files
        })
    end,
}
