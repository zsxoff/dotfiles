-- Nvim Treesitter configurations and abstraction layer.
-- https://github.com/nvim-treesitter/nvim-treesitter

return {
    "nvim-treesitter/nvim-treesitter",
    version = "v0.10.0",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
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
                "helm",
                "html",
                "javascript",
                "kdl",
                "lua",
                "make",
                "markdown",
                "markdown_inline",
                "proto",
                "python",
                "regex",
                "rust",
                "sql",
                "todotxt",
                "vim",
                "vimdoc",
                "yaml",
            },
            indent = {
                enable = false, -- This is an experimental feature.
            },
            highlight = {
                enable = true,
                disable = function(lang, buf)
                    local max_filesize = 10 * 1024 * 1024 -- 10 MB
                    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end,
            },
        })
    end,
}
