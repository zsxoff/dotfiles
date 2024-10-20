-- Nvim Treesitter configurations and abstraction layer.

return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "bash",
                "c",
                "comment",
                "cpp",
                "csv",
                "diff",
                "dockerfile",
                "editorconfig",
                "gitignore",
                "go",
                "html",
                "javascript",
                "lua",
                "markdown",
                "markdown_inline",
                "python",
                "regex",
                "rust",
                "vim",
                "vimdoc",
                "yaml",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
