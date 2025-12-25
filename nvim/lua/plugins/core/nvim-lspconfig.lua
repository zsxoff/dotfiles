-- Default Nvim LSP client configurations for various LSP servers.
-- https://github.com/neovim/nvim-lspconfig

return {
    "neovim/nvim-lspconfig",
    config = function()
        -- Lua
        vim.lsp.config["lua_ls"] = {
            settings = {},
        }
        vim.lsp.enable("lua_ls")

        -- Python
        vim.lsp.config["pyright"] = {
            settings = {
                pyright = {
                    disableOrganizeImports = true, -- Using Ruff's import organizer
                },
            },
        }
        vim.lsp.enable("pyright")

        vim.lsp.config["ruff"] = {
            init_options = {
                settings = {
                    organizeImports = true,
                },
            },
        }
        vim.lsp.enable("ruff")

        -- Go
        vim.lsp.config["gopls"] = {
            settings = {},
        }
        vim.lsp.enable("gopls")

        -- Rust
        vim.lsp.config["rust_analyzer"] = {
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = {
                        command = "clippy",
                    },
                },
            },
        }
        vim.lsp.enable("rust_analyzer")

        -- Linters
        vim.lsp.config["efm"] = {
            init_options = { documentFormatting = true },
            settings = {
                rootMarkers = { ".git/" },
                languages = {
                    proto = {
                        { lintCommand = "api-linter" },
                    },
                    python = {
                        { lintCommand = "mypy" },
                    },
                },
            },
        }
        vim.lsp.enable("efm")
    end,
}
