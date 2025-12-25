-- Lightweight yet powerful formatter plugin for Neovim.
-- https://github.com/stevearc/conform.nvim

return {
    "stevearc/conform.nvim",
    version = "v9.1.0",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    keys = {
        {
            -- Customize or remove this keymap to your liking
            "<leader>f",
            function()
                require("conform").format({ async = true })
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        -- Define your formatters
        formatters_by_ft = {
            javascript = {
                "prettierd",
                "prettier",
                stop_after_first = true,
            },
            lua = {
                "stylua",
            },
            proto = {
                "buf",
            },
            python = {
                "ruff_format",
            },
            rust = {
                "rustfmt",
            },
            sh = {
                "shfmt",
            },
            toml = {
                "taplo",
            },
        },

        -- Set default options
        default_format_opts = {
            lsp_format = "fallback",
        },

        -- Set up format-on-save
        format_on_save = { timeout_ms = 100 },

        -- Customize formatters
        formatters = {
            shfmt = {
                prepend_args = { "-i", "2" },
            },
        },
    },
    init = function()
        -- If you want the formatexpr, here is the place to set it
        vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
    end,
}
