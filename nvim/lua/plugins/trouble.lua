-- A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble
-- your code is causing.
-- https://github.com/folke/trouble.nvim

return {
    "folke/trouble.nvim",
    version = "v3.7.1",
    opts = {
        modes = {
            symbols = { -- Configure symbols mode
                win = {
                    type = "split", -- split window
                    relative = "win", -- relative to current window
                    position = "right", -- right side
                    size = 0.3, -- 30% of the window
                },
            },
            project = {
                mode = "diagnostics", -- inherit from diagnostics mode
                filter = {
                    any = {
                        {
                            function(item)
                                return item.filename:find((vim.loop or vim.uv).cwd(), 1, true) -- limit to files in the current project
                            end,
                        },
                    },
                },
                win = {
                    type = "split",
                    position = "right",
                    size = 0.3,
                },
            },
        },
    },
    cmd = "Trouble",
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Diagnostics (Trouble)",
        },
        {
            "<leader>xX",
            "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
            desc = "Buffer Diagnostics (Trouble)",
        },
        {
            "<leader>cs",
            "<cmd>Trouble symbols toggle focus=false<cr>",
            desc = "Symbols (Trouble)",
        },
        {
            "<leader>cl",
            "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
            desc = "LSP Definitions / references / ... (Trouble)",
        },
        {
            "<leader>xL",
            "<cmd>Trouble loclist toggle<cr>",
            desc = "Location List (Trouble)",
        },
        {
            "<leader>xQ",
            "<cmd>Trouble qflist toggle<cr>",
            desc = "Quickfix List (Trouble)",
        },
    },
}
