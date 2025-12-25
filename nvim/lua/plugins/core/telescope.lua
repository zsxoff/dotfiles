-- Find, Filter, Preview, Pick. All lua, all the time.
-- https://github.com/nvim-telescope/telescope.nvim

return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        {
            "<leader>e",
            "<cmd>Telescope find_files<cr>",
            desc = "Telescope - Find Files",
        },
        {
            "<leader>g",
            "<cmd>Telescope live_grep<cr>",
            desc = "Telescope - Live grep",
        },
        {
            "<leader>r",
            "<cmd>Telescope buffers<cr>",
            desc = "Telescope - Buffers",
        },
        {
            "<leader>t",
            "<cmd>Telescope help_tags<cr>",
            desc = "Telescope - Help tags",
        },
    },
    config = function()
        require("telescope").setup({
            defaults = {
                sorting_strategy = "ascending",
            },
            extensions = {
                fzf = {
                    fuzzy = true, -- false will only do exact matching
                    case_mode = "smart_case", -- or "ignore_case" or "respect_case"
                    override_file_sorter = true, -- override the file sorter
                    override_generic_sorter = true, -- override the generic sorter
                },
            },
        })

        require("telescope").load_extension("fzf")
    end,
}
