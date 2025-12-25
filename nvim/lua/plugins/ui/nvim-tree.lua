-- A file explorer tree for neovim written in lua.
-- https://github.com/nvim-tree/nvim-tree.lua

return {
    "nvim-tree/nvim-tree.lua",
    version = "v1.14.0",
    config = function()
        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 50,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = false,
            },
        })
    end,
    keys = {
        {
            "<leader>b",
            "<cmd>NvimTreeToggle<cr>",
            desc = "Nvim-tree - Toggle",
        },
        {
            "<C-b>",
            "<cmd>NvimTreeToggle<cr>",
            desc = "Nvim-tree - Toggle",
        },
        {
            "<leader>B",
            "<cmd>NvimTreeFocus<cr>",
            desc = "Nvim-tree - Focus",
        },
    },
}
